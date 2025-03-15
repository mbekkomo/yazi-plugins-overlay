{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "allmytoes.yazi";
  version = "0-unstable-2025-02-27";

  src = fetchFromGitHub {
    owner = "Sonico98";
    repo = "allmytoes.yazi";
    rev = "1e43bfd0143c396f60ef7d35e4d6b3aab7bf6439";
    hash = "sha256-jUfw5G70p0eXaUPqbyk7SeXpHNORHeZystZWQVE4e/c=";
  };

}
