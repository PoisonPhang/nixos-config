{ config, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };

      desktopManager.gnome.enable = true;

      displayManager = {
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

    displayManager = {
      defaultSession = "none+xmonad";
    };
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
      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  };
}
