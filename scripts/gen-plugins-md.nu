const $current_dir = path self | path dirname

def generate_plugin_section [info] {
$"## [($info.pname)]\(https://github.com/($info.repo))

- Rev: [`($info.rev)`]\(https://github.com/($info.repo)/commit/($info.rev))"
}

def main [..._] {
  let $plugins = $current_dir | path join .. plugins.json | open
  $plugins
  | items { |name, prop|
    if ($name == "$schema") {
      return null
    }
  
    let $pname = $name
      | str replace -r "^[^a-zA-Z-_]" "_$1"
      | str replace -r -a "[^a-zA-Z0-9-_]" "-"

    generate_plugin_section {
      repo: $prop.repo
      pname: $pname
      rev: $prop.rev
    }
  }
  | reduce --fold '# Plugins' { |x, y| $"($y)\n($x)\n" }
  | save -f ($current_dir | path join .. PLUGINS.md)
}
