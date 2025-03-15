{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "bypass.yazi";
  version = "0-unstable-2025-02-16";

  src = fetchFromGitHub {
    owner = "Rolv-Apneseth";
    repo = "bypass.yazi";
    rev = "ecb1f7f6fd305ff4ffff548fa955595af6b26e60";
    hash = "sha256-XXp4XflrVrs8FrUCRUbSxWZTSGPrIGrpqvB1pARerKQ=";
  };

}
