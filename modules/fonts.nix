{ pkgs, pkgs-unstable, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    ibm-plex
    fira-code
    fira-code-symbols
    jetbrains-mono
    (nerdfonts.override { fonts = [ "SpaceMono" ]; })
  ] ++ (with pkgs-unstable; [
    open-dyslexic
  ]);
}
