{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "cdhist-yazi";
  version = "0-unstable-2025-02-26";

  src = fetchFromGitHub {
    owner = "bulletmark";
    repo = "cdhist.yazi";
    rev = "d8905e26a74301b691d3b11a56b6c287cedd8869";
    hash = "sha256-QwwujektpD/6BbPlIDhBL0H/1d2q5HobOwpZ7o1DmB4=";
  };

}
