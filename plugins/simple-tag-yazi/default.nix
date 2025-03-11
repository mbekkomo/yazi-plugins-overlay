{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "simple-tag-yazi";
  version = "0-unstable-2025-03-10";

  src = fetchFromGitHub {
    owner = "boydaihungst";
    repo = "simple-tag.yazi";
    rev = "51376e1a4dca06c6f9a1e4bd360ed59bcbc55bf6";
    hash = "sha256-m452eR/uO+2GO8fJJ0tPwXy2Lx1nasyiojKTdgpUZZ0=";
  };

}
