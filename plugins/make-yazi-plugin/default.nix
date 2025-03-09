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

      installPhase = ''
        runHook preInstall
        pushd "$SRCDIR"
        mkdir $out/
        cp -r * $out/
        popd
        runHook postInstall
      '';
    };
}
