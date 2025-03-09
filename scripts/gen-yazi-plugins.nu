use std/log

const $current_dir = path self | path dirname
const $plugins_dir = $"($current_dir)/../plugins"

$env.NU_LOG_FORMAT = "%ANSI_START%%LEVEL%:%ANSI_STOP% %MSG%"

def generate_package [
  name
  version
  hash
  owner
  repo
  rev
  srcdir
] {
  $"
  {
    mkYaziPlugin,
    fetchFromGitHub,
  }:

  mkYaziPlugin {
    pname = \"($name)\";
    version = \"($version)\";

    src = fetchFromGitHub {
      owner = \"($owner)\";
      repo = \"($repo)\";
      rev = \"($rev)\";
      hash = \"($hash)\";
    };

    (
      if ($srcdir != null) {
        'srcdir = "' + $srcdir + '";'
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

do {
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
  | par-each {|iter|
    let $name = $iter.name
    let $prop = $iter.prop
    
    if ($name == "$schema") {
      return null
    }

    log info $"Generating Nix package for ($name)"

    let $pkg_name = $name
      | str replace -r "^[^a-zA-Z-_]" "_$1"
      | str replace -r -a "[^a-zA-Z0-9-_]" "-"

    if (not ($"($plugins_dir)/($pkg_name)" | path exists)) {
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

      mkdir $"($plugins_dir)/($pkg_name)"
      (
        generate_package 
          $pkg_name
          $version
          $hash
          ($prop.repo | str replace -r "/.+$" "")
          ($prop.repo | str replace -r "^.+/" "")
          $prop.rev
          $prop.srcdir
      )
      | save $"($plugins_dir)/($pkg_name)/default.nix"
    }

    if (not (open $"($plugins_dir)/default.nix" | str contains $"($pkg_name) =")) {
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
