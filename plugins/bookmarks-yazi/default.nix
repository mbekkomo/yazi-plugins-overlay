{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "bookmarks-yazi";
  version = "0-unstable-2025-02-26";

  src = fetchFromGitHub {
    owner = "dedukun";
    repo = "bookmarks.yazi";
    rev = "95b2c586f4a40da8b6a079ec9256058ad0292e47";
    hash = "sha256-cNgcTa8s+tTqAvF10fmd+o5PBludiidRua/dXArquZI=";
  };

}
