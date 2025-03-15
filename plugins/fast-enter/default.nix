{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "fast-enter.yazi";
  version = "0-unstable-2024-12-19";

  src = fetchFromGitHub {
    owner = "ourongxing";
    repo = "fast-enter.yazi";
    rev = "1c4caebf1f04af5300a224c0a75822464ca774c2";
    hash = "sha256-qKAKsC0Q3S75fzFijfs7MAJLgqTH2d/cOXtSChxmaBw=";
  };

}
