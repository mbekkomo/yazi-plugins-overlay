{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "eza-preview-yazi";
  version = "0-unstable-2024-06-27";

  src = fetchFromGitHub {
    owner = "sharklasers996";
    repo = "eza-preview.yazi";
    rev = "7ca4c2558e17bef98cacf568f10ec065a1e5fb9b";
    hash = "sha256-ncOOCj53wXPZvaPSoJ5LjaWSzw1omHadKDrXdIb7G5U=";
  };

}
