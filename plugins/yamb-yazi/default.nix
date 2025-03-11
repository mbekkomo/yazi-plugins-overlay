{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "yamb-yazi";
  version = "0-unstable-2025-02-28";

  src = fetchFromGitHub {
    owner = "h-hg";
    repo = "yamb.yazi";
    rev = "22af0033be18eead7b04c2768767d38ccfbaa05b";
    hash = "sha256-NMxZ8/7HQgs+BsZeH4nEglWsRH2ibAzq7hRSyrtFDTA=";
  };

}
