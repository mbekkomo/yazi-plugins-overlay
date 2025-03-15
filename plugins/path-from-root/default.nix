{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "path-from-root.yazi";
  version = "0-unstable-2025-03-10";

  src = fetchFromGitHub {
    owner = "aresler";
    repo = "path-from-root.yazi";
    rev = "7d05b87032533f8eaa643d02559cbebeee80e2fb";
    hash = "sha256-JSl9S8kxD8XoN21WfJwjEGwDB+/McjrTv+8SbXvZKds=";
  };

}
