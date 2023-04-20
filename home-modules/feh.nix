{ pkgs, ... }:
{
  programs.feh = {
    enable = true;
  };

  home.file.".fehbg".source = ./feh/.fehbg;
}