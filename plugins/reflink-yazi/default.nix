{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "reflink-yazi";
  version = "0-unstable-2025-02-09";

  src = fetchFromGitHub {
    owner = "Ape";
    repo = "reflink.yazi";
    rev = "ab7bbf84f0446a7afd7ae0d6fddf3e4bc54e93ca";
    hash = "sha256-YTGaywjGzxDoog8GgBbF94GG0Uw55QHGBM8Sb5uUugA=";
  };

}
