{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "bunny-yazi";
  version = "0-unstable-2024-11-15";

  src = fetchFromGitHub {
    owner = "stelcodes";
    repo = "bunny.yazi";
    rev = "49bd059be4a8b33416733cbfcc9561ab57754704";
    hash = "sha256-MIaXCnDwr4SR+pDyg3lunZgkSIiWqGHTuQ3rq4MfGvI=";
  };

}
