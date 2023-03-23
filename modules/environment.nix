{ pkgs, lib, currentSystemName, ... }: 
{  
  environment = {
    systemPackages = with pkgs; [
      git
      git-lfs
      gnumake
      killall
      niv
      rxvt_unicode
      xclip
      arc-theme
    ];

    variables = import ./environment/variables.nix;

    # required for zsh autocomplete
    pathsToLink = [ "/share/zsh" ];
  };
}
