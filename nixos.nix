name: { inputs, nixpkgs, home-manager, system, user }:

nixpkgs.lib.nixosSystem rec {
  inherit system;

  # NixOS System level modules
  modules = [
    ./hardware/${name}.nix
    ./modules/boot.nix
    ./modules/nixpkgs.nix
    ./modules/misc.nix
    ./modules/environment.nix
    ./modules/fonts.nix
    ./modules/networking.nix
    ./modules/nix.nix
    ./modules/users.nix
    ./modules/xserver.nix
    ./modules/zsh.nix

    # home-manager
    home-manager.nixosModules.home-manager
    {
      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        users.poisonphang = {
          imports = [
            ./home-modules/feh.nix
            ./home-modules/flameshot.nix
            ./home-modules/git.nix
            ./home-modules/gpg.nix
            ./home-modules/gtk.nix
            ./home-modules/helix.nix
            ./home-modules/kitty.nix
            ./home-modules/nixos-misc.nix
            ./home-modules/packages.nix
            ./home-modules/rofi.nix
            ./home-modules/starship.nix
            ./home-modules/zellij.nix
            ./home-modules/zoxide.nix
            ./home-modules/zsh.nix
          ];
        };
        # Arguments exposed to each home-module
        extraSpecialArgs = {
          currentSystemName = name;
          currentSystem = system;
          inherit inputs;
        };
      };
    }

    # Arguments exposed to each module
    {
      config._module.args = {
        currentSystemName = name;
        currentSystem = system;
      };
    }
  ];
}
