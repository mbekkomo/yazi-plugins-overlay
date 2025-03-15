{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "custom-shell.yazi";
  version = "0-unstable-2025-02-10";

  src = fetchFromGitHub {
    owner = "AnirudhG07";
    repo = "custom-shell.yazi";
    rev = "6b4550a1b18afbb7ef328ebf54d81de24101288e";
    hash = "sha256-deLbUM4J/pDrLdKeEp62GJ+CFdwsSwOUiX85KuCRStc=";
  };

}
