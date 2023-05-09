{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-22.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager/release-22.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    helix.url = "github:helix-editor/helix";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }:
    let 
      mkNixos = import ./nixos.nix; 
      user = "poisonphang"; 
    in 
    {
      nixosConfigurations = let system = "x86_64-linux"; in {
        carbon-x1-gen-8 = mkNixos "carbon-x1-gen-8" {
          inherit user inputs nixpkgs home-manager system;
        };
        poisonphang-dt = mkNixos "poisonphang-dt" {
          inherit user inputs nixpkgs home-manager system;
        };
      };
    };
}
