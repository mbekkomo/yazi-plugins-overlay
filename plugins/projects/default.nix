{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "projects.yazi";
  version = "0-unstable-2025-03-03";

  src = fetchFromGitHub {
    owner = "MasouShizuka";
    repo = "projects.yazi";
    rev = "4f11eccf835556600a37730b383ee12f00d4fc59";
    hash = "sha256-XHGlQn0Nsxh/WScz4v2I+IWvzGJ9QTXbB7zgSCPQ+E0=";
  };

}
