{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "restore.yazi";
  version = "0-unstable-2025-03-07";

  src = fetchFromGitHub {
    owner = "boydaihungst";
    repo = "restore.yazi";
    rev = "5d228847775678070f437f8a0c4f4746820a5f33";
    hash = "sha256-Hxkvmf6iQysjWHaOjm2Q1WOYWyo2K6woTw1rlnpxCyM=";
  };

}
