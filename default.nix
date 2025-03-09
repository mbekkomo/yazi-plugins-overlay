# Overlay for Yazi plugins
#
# You should be using this instead of ./plugins

final: prev: {
  yaziPlugins = prev.callPackage ./plugins { };
}

## EOF to top it off ##
