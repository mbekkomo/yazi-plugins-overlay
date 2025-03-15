{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "fuse-archive.yazi";
  version = "0-unstable-2025-01-20";

  src = fetchFromGitHub {
    owner = "dawsers";
    repo = "fuse-archive.yazi";
    rev = "a58327c0073c9f78dc0d7de7da6bb48e90cb7f86";
    hash = "sha256-xkXNcZm+IroOu0+9/qjmh9c8HODteEJ0+jAVEbTRayg=";
  };

}
