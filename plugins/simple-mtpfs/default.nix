{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "simple-mtpfs.yazi";
  version = "0-unstable-2025-02-18";

  src = fetchFromGitHub {
    owner = "boydaihungst";
    repo = "simple-mtpfs.yazi";
    rev = "614a2d295815b430a9e267e00aa212015bc0d36d";
    hash = "sha256-SoO3qAgUPTPBo7kK+gKNITXbHOmzmyx9hUZzIg4P/58=";
  };

}
