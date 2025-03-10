# yazi-plugins-overlay
Provides a Nixpkgs overlay for Yazi plugins

## Usage

- If you're not using Nix flakes:<br>
  Copy the latest sha-256 commit from the main branch, and then add `import (builtins.fetchTarball "https://github.com/mbekkomo/yazi-plugins-overlay/archive/<sha-256-commit>.tar.gz")` into the overlay configuration, for example:<br>
  ```nix
  # ~/.nixpkgs/overlays.nix
  [
    (import (builtins.fetchTarball "https://github.com/mbekkomo/yazi-plugins-overlay/archive/04d4aae7c79f5f0fcd49e7c9bb635cffbbd16477.tar.gz"))
  ]
  ```
  
- If you're using Nix flakes:<br>
  Add this repo into your flake inputs, e.g `yazi-plugins-overlay.url = "github:mbekkomo/yazi-plugins-overlay"`. Add `yazi-plugins-overlay.overlay.default` to the overlay configuration, for example:<br>
  ```nix
  {
    inputs.yazi-plugins-overlay.url = "github:mbekkomo/yazi-plugins-overlay";
  }
  ```
  ```nix
  {
    outputs = { nixpkgs, ... }:
      let
       pkgs = import nixpkgs {
         overlays = [ yazi-plugins-overlay.overlays.default ];
       };
      in
      { ... };
  }
  ```

Once you're done with setting up the overlay, you can now access `yaziPlugins.*` to work with [plugins that are packaged](./PLUGINS.md) by this overlay.
