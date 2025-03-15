{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "augment-command.yazi";
  version = "0-unstable-2025-03-04";

  src = fetchFromGitHub {
    owner = "hankertrix";
    repo = "augment-command.yazi";
    rev = "e676d3c1c347dfd42dec0014b38dfe3a68ae201c";
    hash = "sha256-igpY71JYfPd5tOw8mTzJstvXJA4UhWgjRxYENWxU/Lo=";
  };

}
