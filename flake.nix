{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-23.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    helix.url = "github:helix-editor/helix";

    nixpkgs-fmt = {
      url = "github:nix-community/nixpkgs-fmt";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }:
    let
      mkNixos = import ./nixos.nix;
      user = "poisonphang";
      system = "x86_64-linux";
    in
    {
      formatter.${system} = inputs.nixpkgs-fmt.defaultPackage.${system};

      nixosConfigurations = {
        carbon-x1-gen-8 = mkNixos "carbon-x1-gen-8" {
          inherit user inputs nixpkgs home-manager system;
        };
        poisonphang-dt = mkNixos "poisonphang-dt" {
          inherit user inputs nixpkgs home-manager system;
        };
      };
    };
}
