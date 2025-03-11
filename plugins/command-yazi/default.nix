{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "command-yazi";
  version = "0-unstable-2024-12-22";

  src = fetchFromGitHub {
    owner = "KKV9";
    repo = "command.yazi";
    rev = "95a29be5233c8124089f42abb73c8e8bca38a88b";
    hash = "sha256-4HY2PDRn47yTmpOoQPLpkwqujpYCTb9wGabvYvCdGtU=";
  };

}
