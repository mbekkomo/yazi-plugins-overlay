{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "nbpreview-yazi";
  version = "0-unstable-2025-02-10";

  src = fetchFromGitHub {
    owner = "AnirudhG07";
    repo = "nbpreview.yazi";
    rev = "f8879b382f441e881fc10bd18a523fd910737067";
    hash = "sha256-iHfvLSUveHSRvYw5xFGuhSsTRC3xlY+PaooHnmA7Zzs=";
  };

}
