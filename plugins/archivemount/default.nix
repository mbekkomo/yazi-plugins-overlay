{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "archivemount.yazi";
  version = "0-unstable-2025-01-19";

  src = fetchFromGitHub {
    owner = "AnirudhG07";
    repo = "archivemount.yazi";
    rev = "6908a87e54b31e2062884eda1de3aa5b82a45fdc";
    hash = "sha256-M11EoQLI7dtB+8KbpLSJVSq4jHsb72jKYcM5BAWz/Ag=";
  };

}
