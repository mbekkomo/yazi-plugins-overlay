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
  hide-preview = callPackage' ./hide-preview { };
  lsar = callPackage' ./lsar { };
  diff = callPackage' ./diff { };
  chmod = callPackage' ./chmod { };
  no-status = callPackage' ./no-status { };
  full-border = callPackage' ./full-border { };
  mount = callPackage' ./mount { };
  toggle-pane = callPackage' ./toggle-pane { };
  smart-filter = callPackage' ./smart-filter { };
  smart-enter = callPackage' ./smart-enter { };
  mactag = callPackage' ./mactag { };
  jump-to-char = callPackage' ./jump-to-char { };
  mime-ext = callPackage' ./mime-ext { };
  sudo-demo = callPackage' ./sudo-demo { };
  git = callPackage' ./git { };
  vcs-files = callPackage' ./vcs-files { };
  max-preview = callPackage' ./max-preview { };
  mdcat = callPackage' ./mdcat { };
  exifaudio = callPackage' ./exifaudio { };
  ouch = callPackage' ./ouch { };
  glow = callPackage' ./glow { };
  hexyl = callPackage' ./hexyl { };
  mediainfo = callPackage' ./mediainfo { };
  torrent-preview = callPackage' ./torrent-preview { };
  nbpreview = callPackage' ./nbpreview { };
  relative-motions = callPackage' ./relative-motions { };
  first-non-directory = callPackage' ./first-non-directory { };
  time-travel = callPackage' ./time-travel { };
  bookmarks = callPackage' ./bookmarks { };
  cdhist = callPackage' ./cdhist { };
  eza-preview = callPackage' ./eza-preview { };
  system-clipboard = callPackage' ./system-clipboard { };
  path-from-root = callPackage' ./path-from-root { };
  sudo = callPackage' ./sudo { };
  copy-file-contents = callPackage' ./copy-file-contents { };
  reflink = callPackage' ./reflink { };
  archivemount = callPackage' ./archivemount { };
  simple-tag = callPackage' ./simple-tag { };
  wl-clipboard = callPackage' ./wl-clipboard { };
  simple-mtpfs = callPackage' ./simple-mtpfs { };
  restore = callPackage' ./restore { };
  lazygit = callPackage' ./lazygit { };
  rsync = callPackage' ./rsync { };
  fuse-archive = callPackage' ./fuse-archive { };
  compress = callPackage' ./compress { };
  projects = callPackage' ./projects { };
  yamb = callPackage' ./yamb { };
  command = callPackage' ./command { };
  allmytoes = callPackage' ./allmytoes { };
  toggle-view = callPackage' ./toggle-view { };
  yatline = callPackage' ./yatline { };
  omp = callPackage' ./omp { };
  augment-command = callPackage' ./augment-command { };
  fast-enter = callPackage' ./fast-enter { };
  custom-shell = callPackage' ./custom-shell { };
  pref-by-location = callPackage' ./pref-by-location { };
  simple-status = callPackage' ./simple-status { };
  starship = callPackage' ./starship { };
  open-with-cmd = callPackage' ./open-with-cmd { };
  bypass = callPackage' ./bypass { };
  what-size = callPackage' ./what-size { };
  bunny = callPackage' ./bunny { };
  close-and-restore-tab = callPackage' ./close-and-restore-tab { };
}