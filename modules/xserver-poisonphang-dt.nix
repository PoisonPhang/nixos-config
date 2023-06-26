{ config, ... }:
{
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";

    desktopManager.gnome.enable = true;

    displayManager = {
      defaultSession = "none+xmonad";
      lightdm.enable = true;
    };

    windowManager = {
      xmonad = {
        enable = true;
        enableContribAndExtras = true;
        config = ../xmonad/xmonad.hs;
      };
    };
    videoDrivers = [ "nvidia" ];
  };

  hardware = {
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
    };
    nvidia = {
      modesetting.enable = true;
      open = true;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.latest;
    };
  };
}
