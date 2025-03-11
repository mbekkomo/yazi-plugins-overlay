{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "system-clipboard-yazi";
  version = "0-unstable-2024-08-21";

  src = fetchFromGitHub {
    owner = "orhnk";
    repo = "system-clipboard.yazi";
    rev = "7775a80e8d3391e0b3da19ba143196960a4efc48";
    hash = "sha256-tfR9XHvRqm7yPbTu/joBDpu908oceaUoBiIImehMobk=";
  };

}
