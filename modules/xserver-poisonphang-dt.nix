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
      package = config.boot.kernelPackages.nvidiaPackages.mkDriver {
        version = "550.127.05";
        sha256_64bit = "sha256-04TzT10qiWvXU20962ptlz2AlKOtSFocLuO/UZIIauk=";
        sha256_aarch64 = "sha256-3wsGqJvDf8io4qFSqbpafeHHBjbasK5i/W+U6TeEeBY=";
        openSha256 = "sha256-r0zlWPIuc6suaAk39pzu/tp0M++kY2qF8jklKePhZQQ=";
        settingsSha256 = "sha256-cUSOTsueqkqYq3Z4/KEnLpTJAryML4Tk7jco/ONsvyg=";
        persistencedSha256 = "sha256-8nowXrL6CRB3/YcoG1iWeD4OCYbsYKOOPE374qaa4sY=";
      };
    };
  };
}
