{ lib, stdenv }:

lib.extendMkDerivation {
  constructDrv = stdenv.mkDerivation;

  extendDrvArgs =
    final:
    {
      name ? "${args.pname}-${args.version}",
      srcdir ? ".",
      ...
    }@args:
    args
    // {
      inherit name;

      env.SRCDIR = srcdir;

      strictDeps = true;

      postUnpack = ''
        # preserve yazi compatibility
        if [[ ! -f ./main.lua ]]; then
          ln -sr init.lua main.lua
        elif [[ ! -f ./init.lua ]]; then
          ln -sr main.lua init.lua
        fi
      '';

      installPhase = ''
        runHook preInstall
        pushd "$SRCDIR"
        mkdir $out/
        cp -r * $out/
        popd
        runHook preInstall
      '';
    };
}
