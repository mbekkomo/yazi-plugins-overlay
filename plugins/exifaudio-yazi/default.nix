{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "exifaudio-yazi";
  version = "0-unstable-2025-03-06";

  src = fetchFromGitHub {
    owner = "Sonico98";
    repo = "exifaudio.yazi";
    rev = "7ff714155f538b6460fdc8e911a9240674ad9b89";
    hash = "sha256-qRUAKlrYWV0qzI3SAQUYhnL3QR+0yiRc+0XbN/MyufI=";
  };

}
