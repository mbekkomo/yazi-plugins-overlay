{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "mount.yazi";
  version = "0-unstable-2025-03-08";

  src = fetchFromGitHub {
    owner = "yazi-rs";
    repo = "plugins";
    rev = "2bf70d880e02db95394de360668325b46f804791";
    hash = "sha256-0A5UVbrP9+GRvX14VQm4Yxw+P9Ca5gtlk9qkLCVf5+Q=";
  };
  
  preInstall = ''
    rm $SRCDIR/LICENSE
    cp LICENSE $SRCDIR/LICENSE
  '';

  srcdir = "mount.yazi";
}
