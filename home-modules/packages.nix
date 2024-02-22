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
    eza
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
    pinentry
    pinentry-curses
    ranger
    ripgrep
    rofi-power-menu
    tdesktop
    vivaldi
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
      element-desktop
      glow
      ivpn
      ivpn-service
      ledger-live-desktop
      nushell
      obsidian
      spotify
    ]
  );
}
