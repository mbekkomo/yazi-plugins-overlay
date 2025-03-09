{
  description = "Provides a Nixpkgs overlay for Yazi plugins";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { flake-utils, nixpkgs, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages = (import ./. pkgs pkgs).yaziPlugins;

        formatter = pkgs.nixfmt-tree;
      }
    )
    // {
      overlays = rec {
        yaziPlugins = import ./.;
        default = yaziPlugins;
      };
    };
}
