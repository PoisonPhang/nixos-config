{ pkgs, pkgs-unstable, ... }:
{
  home.packages = with pkgs; [
    binutils
    bottom
    cachix
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
    yq
    zip
  ] ++ (
    with pkgs-unstable; [
      cryptsetup
      dasel
      ivpn
      ivpn-service
      ledger-live-desktop
      obsidian
    ]
  );
}
