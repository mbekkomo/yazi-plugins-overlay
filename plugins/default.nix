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
  mdcat-yazi = callPackage' ./mdcat-yazi { };
  exifaudio-yazi = callPackage' ./exifaudio-yazi { };
  ouch-yazi = callPackage' ./ouch-yazi { };
  glow-yazi = callPackage' ./glow-yazi { };
  hexyl-yazi = callPackage' ./hexyl-yazi { };
  mediainfo-yazi = callPackage' ./mediainfo-yazi { };
  torrent-preview-yazi = callPackage' ./torrent-preview-yazi { };
  nbpreview-yazi = callPackage' ./nbpreview-yazi { };
  relative-motions-yazi = callPackage' ./relative-motions-yazi { };
  first-non-directory-yazi = callPackage' ./first-non-directory-yazi { };
  time-travel-yazi = callPackage' ./time-travel-yazi { };
  bookmarks-yazi = callPackage' ./bookmarks-yazi { };
  cdhist-yazi = callPackage' ./cdhist-yazi { };
  eza-preview-yazi = callPackage' ./eza-preview-yazi { };
  system-clipboard-yazi = callPackage' ./system-clipboard-yazi { };
  path-from-root-yazi = callPackage' ./path-from-root-yazi { };
  sudo-yazi = callPackage' ./sudo-yazi { };
  copy-file-contents-yazi = callPackage' ./copy-file-contents-yazi { };
  reflink-yazi = callPackage' ./reflink-yazi { };
  archivemount-yazi = callPackage' ./archivemount-yazi { };
  simple-tag-yazi = callPackage' ./simple-tag-yazi { };
  wl-clipboard-yazi = callPackage' ./wl-clipboard-yazi { };
  simple-mtpfs-yazi = callPackage' ./simple-mtpfs-yazi { };
  restore-yazi = callPackage' ./restore-yazi { };
  lazygit-yazi = callPackage' ./lazygit-yazi { };
  rsync-yazi = callPackage' ./rsync-yazi { };
  fuse-archive-yazi = callPackage' ./fuse-archive-yazi { };
  compress-yazi = callPackage' ./compress-yazi { };
  projects-yazi = callPackage' ./projects-yazi { };
  yamb-yazi = callPackage' ./yamb-yazi { };
  command-yazi = callPackage' ./command-yazi { };
  allmytoes-yazi = callPackage' ./allmytoes-yazi { };
  toggle-view-yazi = callPackage' ./toggle-view-yazi { };
  yatline-yazi = callPackage' ./yatline-yazi { };
  omp-yazi = callPackage' ./omp-yazi { };
  augment-command-yazi = callPackage' ./augment-command-yazi { };
  fast-enter-yazi = callPackage' ./fast-enter-yazi { };
  custom-shell-yazi = callPackage' ./custom-shell-yazi { };
  pref-by-location-yazi = callPackage' ./pref-by-location-yazi { };
  simple-status-yazi = callPackage' ./simple-status-yazi { };
  starship-yazi = callPackage' ./starship-yazi { };
  open-with-cmd-yazi = callPackage' ./open-with-cmd-yazi { };
  bypass-yazi = callPackage' ./bypass-yazi { };
  what-size-yazi = callPackage' ./what-size-yazi { };
  bunny-yazi = callPackage' ./bunny-yazi { };
  close-and-restore-tab-yazi = callPackage' ./close-and-restore-tab-yazi { };
}