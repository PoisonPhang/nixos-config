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
    file
    fzf
    gh
    gnome-control-center
    gping
    htop
    jq
    ltex-ls
    neofetch
    nil
    nixfmt
    pamixer
    pinentry-curses
    ranger
    ripgrep
    rofi-power-menu
    slack
    tdesktop
    watch
    wget
    xclip
    xmobar
    yq
    zip
  ] ++ (
    with pkgs-unstable; [
      _1password-cli
      cryptsetup
      dasel
      element-desktop
      glow
      google-chrome
      ivpn
      ivpn-service
      ledger-live-desktop
      librewolf
      nushell
      obsidian
      spotify
      yazi
    ]
  );
}
