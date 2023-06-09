{ pkgs, pkgs-unstable, ... }:
{
  home.packages = with pkgs; [
    binutils
    bottom
    coreutils-full
    curl
    delta
    discord
    du-dust
    dunst
    element-desktop
    exa
    fd
    fzf
    gh
    gnome3.gnome-control-center
    gping
    htop
    jq
    lazygit
    ltex-ls
    neofetch
    nil
    nixfmt
    obsidian
    pamixer
    pick-colour-picker
    pinentry
    pinentry-curses
    ranger
    ripgrep
    rofi-power-menu
    tdesktop
    tree
    vivaldi
    vscode
    watch
    wget
    xclip
    xmobar
    zip
  ] ++ (
    with pkgs-unstable; [
      _1password-gui
    ]
  );
}
