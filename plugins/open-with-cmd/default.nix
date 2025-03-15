{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "open-with-cmd.yazi";
  version = "0-unstable-2025-02-09";

  src = fetchFromGitHub {
    owner = "Ape";
    repo = "open-with-cmd.yazi";
    rev = "433cf301c36882c31032d3280ab0c94825fc5e9f";
    hash = "sha256-QazKfNEPFdkHwMrH4D+VMwj8fGXM8KHDdSvm1tik3dQ=";
  };

}
