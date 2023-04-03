{ config, lib, pkgs, pkgs-unstable, inputs, ... }:
{
  home.packages = with pkgs; [
    bat
    exa
    gping
    gh
    fd
    fzf
    htop
    jq
    ripgrep
    ranger
    tree
    watch
    zip
    curl
    delta
    pamixer
    wget
    coreutils-full
    binutils
    gnome3.gnome-control-center
    xclip
    neofetch
    nixfmt
    pinentry
    pinentry-curses
    pick-colour-picker
    bottom
    firefox
    starship
    zoxide
    ltex-ls
  ] ++
  (with pkgs-unstable; [
    vscode
    _1password-gui
    obsidian
    tdesktop
    element-desktop
  ]);
}
