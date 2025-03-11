{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "omp-yazi";
  version = "0-unstable-2025-02-13";

  src = fetchFromGitHub {
    owner = "saumyajyoti";
    repo = "omp.yazi";
    rev = "4c44873cd5ed15b838811286d5e8090bfe75dcf7";
    hash = "sha256-hvKLXvooP60ATaKNdDabjPNeWWBrNeDajbMBZZICcWQ=";
  };

}
