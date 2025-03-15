{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "simple-status.yazi";
  version = "0-unstable-2025-02-09";

  src = fetchFromGitHub {
    owner = "Ape";
    repo = "simple-status.yazi";
    rev = "d0da1049c417c2d5eec8bf5171ff9aad5c2ae773";
    hash = "sha256-c6Y8qMnZAA/azV7lCqzwXN2qlgWi6BS6B0nInbR/sb4=";
  };

}
