use std/log

const $current_dir = path self | path dirname
const $plugins_dir = $"($current_dir)/../plugins"

$env.NU_LOG_FORMAT = "%ANSI_START%%LEVEL%:%ANSI_STOP% %MSG%"

def generate_package [info] {
  $"
  {
    mkYaziPlugin,
    fetchFromGitHub,
  }:

  mkYaziPlugin {
    pname = \"($info.name)\";
    version = \"($info.version)\";

    src = fetchFromGitHub {
      owner = \"($info.owner)\";
      repo = \"($info.repo)\";
      rev = \"($info.rev)\";
      hash = \"($info.hash)\";
    };

    (
      if (($info | get -i srcdir) != null) {
        'srcdir = "' + $info.srcdir + '";'
      } else {
        ""
      }
    )
  }
  "
  | if ($env.__has_nixfmt == true) {
    nixfmt --filename=default.nix
  } else {
    $in
  }
}

def main [..._] {
  if (which nix | is-empty) {
    error make {
      msg: "Can't find 'nix' command"
      help: "Install 'nix' command from https://nixos.org"
    }
  }

  if (which git | is-empty) {
    error make {
      msg: "Can't find 'git' command"
      help: "Install 'git' command using your package manager"
    }
  }

  if (which nixfmt | is-empty) {
    log warning "'nixfmt' is missing, skipped formatting generated Nix code..."
  } else {
    $env.__has_nixfmt = true;
  }

  let $plugins = open $"($current_dir)/../plugins.json"

  log info "Generating Nix packages..."

  $plugins
  | transpose name prop
  | par-each { |iter|
    let $name = $iter.name
    let $prop = $iter.prop
    
    if ($name == "$schema") {
      return null
    }

    log info $"Generating Nix package for ($name)"

    let $pkg_name = $name
      | str replace -r "^[^a-zA-Z-_]" "_$1"
      | str replace -r -a "[^a-zA-Z0-9-_]" "-"
    let $package_plugin_dir = $"($plugins_dir)/($pkg_name)"

    if (not ($"($package_plugin_dir)/default.nix)" | path exists)) {
      let $git_info = nix-instantiate --eval --expr $"
          removeAttrs \(
            builtins.fetchGit {
              url = ''https://github.com/($prop.repo).git'';
              rev = ''($prop.rev)'';
            }
          ) ["outPath"]
        " --json | from json
      let $hash = $git_info.narHash
      let $version = do {
        let $y = $git_info.lastModifiedDate | str substring 0..3
        let $m = $git_info.lastModifiedDate | str substring 4..5
        let $d = $git_info.lastModifiedDate | str substring 6..7
        $"0-unstable-($y)-($m)-($d)"
      }

      mkdir $package_plugin_dir
      generate_package {
        name: $pkg_name
        version: $version
        hash: $hash
        owner: ($prop.repo | str replace -r "/.+$" "")
        repo: ($prop.repo | str replace -r "^.+/" "")
        rev: $prop.rev
        srcdir: ($prop | get -i srcdir)
      }
      | save -f $"($package_plugin_dir)/default.nix"
    }

    if (not (
      open $"($plugins_dir)/default.nix"
      | str contains $"($pkg_name) ="
    )) {
      let $contents = open $"($plugins_dir)/default.nix"
        | str replace ";\n}" $";\n($pkg_name) = callPackage' ./($pkg_name) { };\n}"
        | if ($env.__has_nixfmt == true) {
          nixfmt
        } else {
          $in
        }
      $contents | save -f $"($plugins_dir)/default.nix"
    }
  }

  log info "Successfully generated all packages"
}

null
