{ pkgs, pkgs-unstable, ... }:
{
  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
    ibm-plex
    jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    vollkorn
    comic-neue
    (nerdfonts.override { fonts = [ "SpaceMono" ]; })
  ] ++ (with pkgs-unstable; [
    open-dyslexic
  ]);
}
