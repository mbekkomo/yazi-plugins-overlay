use std/log

$env.NU_LOG_FORMAT = "%ANSI_START%%LEVEL%:%ANSI_STOP% %MSG%"

const $current_dir = path self | path dirname

def get_plugin_info [expr] {
  let $has_monorepo = (
    if ($expr | str contains ":") {
      true
    } else {
      false
    }
  )
  let $repo = (
    if ($has_monorepo) {
      $expr | str replace -r ":.+$" ""
    } else {
      $expr
    }
  )
  let $srcdir = (
    if ($has_monorepo) {
      $expr | str replace -r "^.+/.+:" ""
    } else {
      null
    }
  )
  let $name = (
    if ($srcdir != null) {
      $srcdir | path basename
    } else {
      $repo | path basename
    }
  )
  let $git_info = do {
      let $output = nix-instantiate --eval --expr $"
        removeAttrs \(
          builtins.fetchGit {
            url = ''https://github.com/($repo).git'';
          }
        ) ["outPath"]
      " --json
      $output | from json
    }

  {
    repo: $repo
    name: $name
    rev: $git_info.rev
    srcdir: $srcdir
  }
}

def main [plugin_expr:string ...plugin_exprs:string]: any -> any {
  if (which nix | is-empty) {
    error make {
      msg: "Can't find 'nix' command"
      help: "Install 'nix' command from https://nixos.org"
    }
  }

  log info "Fetching plugins info..."

  let $plugins = open $"($current_dir)/../plugins.json"

  $plugins | merge (
    $plugin_expr
    | append $plugin_exprs
    | par-each { |expr|
      let $expr = $expr | str replace -r "https?://github.com/" ""
    
      log info $"Fetching info of ($expr)"
      let $info = get_plugin_info $expr
      {
        ($info.name): ({
          repo: $info.repo
          rev: $info.rev
        }
        | if ($info.srcdir != null) {
          merge { srcdir: $info.srcdir }
        } else {
          $in
        })
      }
    }
    | reduce { |x, y| $x | merge $y }
  )
  | to json
  | save -f $"($current_dir)/../plugins.json"

  log info $"Saved to plugins.json successfully"
}
