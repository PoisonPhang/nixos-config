{ pkgs, ... }:
{
  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    pinentry.package = pkgs.pinentry-curses;
    defaultCacheTtl = 31536000;
    maxCacheTtl = 31536000;
  };
}
