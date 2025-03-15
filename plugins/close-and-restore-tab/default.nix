{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "close-and-restore-tab.yazi";
  version = "0-unstable-2025-03-03";

  src = fetchFromGitHub {
    owner = "MasouShizuka";
    repo = "close-and-restore-tab.yazi";
    rev = "4eadb90019a3638eab350b10e53a52ba15544a31";
    hash = "sha256-gbnIsOgOWwyGQmO0hzBSPo5mKqZMPvg6HvpdFBZUhP4=";
  };

}
