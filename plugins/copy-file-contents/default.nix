{
  mkYaziPlugin,
  fetchFromGitHub,
}:

mkYaziPlugin {
  pname = "copy-file-contents.yazi";
  version = "0-unstable-2025-02-10";

  src = fetchFromGitHub {
    owner = "AnirudhG07";
    repo = "plugins-yazi";
    rev = "524c52c7e433834e36a502abd1e31a6a65c8caf0";
    hash = "sha256-GrPqcHYG+qHNi80U+EJJd1JjdAOexiE6sQxsqdeCSMg=";
  };

  srcdir = "copy-file-contents.yazi";
}
