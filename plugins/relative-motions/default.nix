{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "relative-motions.yazi";
  version = "0-unstable-2025-02-26";

  src = fetchFromGitHub {
    owner = "dedukun";
    repo = "relative-motions.yazi";
    rev = "810306563e1928855f5cf61f83801544e3eb3788";
    hash = "sha256-sIS7vtpY8z8D1nHMmr/uZoKREeGsIZuNSG8SnKkjREI=";
  };

}
