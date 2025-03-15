{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "mdcat.yazi";
  version = "0-unstable-2024-11-30";

  src = fetchFromGitHub {
    owner = "GrzegorzKozub";
    repo = "mdcat.yazi";
    rev = "d3d5089d06fe4ed14504726722f89c977f9eb54a";
    hash = "sha256-F6rNLWJxMmTOOlna6lev4m1h559BWftfy6pNoTqVGKw=";
  };

}
