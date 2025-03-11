{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "toggle-view-yazi";
  version = "0-unstable-2024-12-19";

  src = fetchFromGitHub {
    owner = "dawsers";
    repo = "toggle-view.yazi";
    rev = "9ae57f904d616f4462e829521ec1ad10727ec7ed";
    hash = "sha256-LBL+pCsnEt9bneiNYeVem6TvhRlk6eB5k/qD0+N2Tj8=";
  };

}
