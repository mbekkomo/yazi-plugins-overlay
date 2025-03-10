{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "mediainfo-yazi";
  version = "0-unstable-2025-03-07";

  src = fetchFromGitHub {
    owner = "boydaihungst";
    repo = "mediainfo.yazi";
    rev = "447fe95239a488459cfdbd12f3293d91ac6ae0d7";
    hash = "sha256-U6rr3TrFTtnibrwJdJ4rN2Xco4Bt4QbwEVUTNXlWRps=";
  };

}
