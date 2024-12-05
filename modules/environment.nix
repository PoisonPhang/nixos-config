{ pkgs, lib, currentSystemName, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      git
      git-lfs
      gnumake
      killall
      niv
      xclip
      arc-theme
      direnv
    ];

    variables = import ./environment/variables.nix;

    # required for zsh autocomplete
    pathsToLink = [ "/share/zsh" ];
  };
}
