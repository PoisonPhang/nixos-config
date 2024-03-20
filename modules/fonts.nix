{ pkgs, pkgs-unstable, ... }:
{
  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
    ibm-plex
    jetbrains-mono
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    vollkorn
    (nerdfonts.override { fonts = [ "SpaceMono" ]; })
  ] ++ (with pkgs-unstable; [
    open-dyslexic
  ]);
}
