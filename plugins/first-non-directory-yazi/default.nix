{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "first-non-directory-yazi";
  version = "0-unstable-2025-02-03";

  src = fetchFromGitHub {
    owner = "lpanebr";
    repo = "yazi-plugins";
    rev = "ca18a2cfb893e3608997c9de54acced124373871";
    hash = "sha256-v+EmMbrccAlzeR9rhmlFq0f+899l624EhWx1DFz+qzc=";
  };

  srcdir = "first-non-directory.yazi";
}
