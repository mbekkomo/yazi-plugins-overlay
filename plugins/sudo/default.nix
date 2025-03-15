{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "sudo.yazi";
  version = "0-unstable-2025-02-08";

  src = fetchFromGitHub {
    owner = "TD-Sky";
    repo = "sudo.yazi";
    rev = "af70636fbcf30ef17f77c5ffcfcbf1342c554be1";
    hash = "sha256-IvTBAhZrbrNJ5nsLxr35V0ntQw89yXUdoU9ashbflYY=";
  };

}
