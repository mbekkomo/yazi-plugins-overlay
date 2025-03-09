# Top-level plugins
#
# This is auto-generated, do not attempt to modify unless needed.

{
  callPackage,
}:

let
  mkYaziPlugin = callPackage ./make-yazi-plugin { };
  callPackage' = x: y: callPackage x (y // { inherit mkYaziPlugin; });
in
{
  inherit mkYaziPlugin;
  hide-preview-yazi = callPackage' ./hide-preview-yazi { };
  lsar-yazi = callPackage' ./lsar-yazi { };
  diff-yazi = callPackage' ./diff-yazi { };
  chmod-yazi = callPackage' ./chmod-yazi { };
  no-status-yazi = callPackage' ./no-status-yazi { };
  full-border-yazi = callPackage' ./full-border-yazi { };
  mount-yazi = callPackage' ./mount-yazi { };
  toggle-pane-yazi = callPackage' ./toggle-pane-yazi { };
  smart-filter-yazi = callPackage' ./smart-filter-yazi { };
  smart-enter-yazi = callPackage' ./smart-enter-yazi { };
  mactag-yazi = callPackage' ./mactag-yazi { };
  jump-to-char-yazi = callPackage' ./jump-to-char-yazi { };
  mime-ext-yazi = callPackage' ./mime-ext-yazi { };
  sudo-demo-yazi = callPackage' ./sudo-demo-yazi { };
  git-yazi = callPackage' ./git-yazi { };
  vcs-files-yazi = callPackage' ./vcs-files-yazi { };
  max-preview-yazi = callPackage' ./max-preview-yazi { };
}
