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
    nerd-fonts.space-mono
  ] ++ (with pkgs-unstable; [
    open-dyslexic
  ]);
}
