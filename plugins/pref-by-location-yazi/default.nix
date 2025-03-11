{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "pref-by-location-yazi";
  version = "0-unstable-2025-02-18";

  src = fetchFromGitHub {
    owner = "boydaihungst";
    repo = "pref-by-location.yazi";
    rev = "21f9f7679edb34c225885949203acd494f1f0fee";
    hash = "sha256-RdPXaOcWuEHrNUMdUpSXWZsWI/AS8r2xNJunmVqkw6g=";
  };

}
