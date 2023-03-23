{ ... }:
{
  programs.gpg = {
    enable = true;
  };
  
  services.gpg-agent = {
    enable = true;
    pinentryFlavor = "gnome3";
    defaultCacheTtl = 31536000;
    maxCacheTtl = 31536000;
  };
}