{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "rsync.yazi";
  version = "0-unstable-2024-08-03";

  src = fetchFromGitHub {
    owner = "GianniBYoung";
    repo = "rsync.yazi";
    rev = "3f431aa388a645cc95b8292659949a77c280ed8b";
    hash = "sha256-xQHuMGg0wQQ16VbYKKnPLdLqKB6YgUlTpOOuxNNfhj8=";
  };

}
