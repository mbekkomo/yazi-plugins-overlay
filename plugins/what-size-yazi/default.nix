{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "what-size-yazi";
  version = "0-unstable-2024-12-30";

  src = fetchFromGitHub {
    owner = "pirafrank";
    repo = "what-size.yazi";
    rev = "b23e3a4cf44ce12b81fa6be640524acbd40ad9d3";
    hash = "sha256-SDObD22u2XYF2BYKsdw9ZM+yJLH9xYTwSFRWIwMCi08=";
  };

}
