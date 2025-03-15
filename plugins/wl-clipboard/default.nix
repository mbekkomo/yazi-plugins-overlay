{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "wl-clipboard.yazi";
  version = "0-unstable-2025-01-05";

  src = fetchFromGitHub {
    owner = "grappas";
    repo = "wl-clipboard.yazi";
    rev = "c4edc4f6adf088521f11d0acf2b70610c31924f0";
    hash = "sha256-jlZgN93HjfK+7H27Ifk7fs0jJaIdnOyY1wKxHz1wX2c=";
  };

}
