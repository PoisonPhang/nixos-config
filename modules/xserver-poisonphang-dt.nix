{ config, pkgs, ... }:
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
      package = config.boot.kernelPackages.nvidiaPackages.mkDriver {
        version = "530.41.03";
        sha256_64bit = "sha256-riehapaMhVA/XRYd2jQ8FgJhKwJfSu4V+S4uoKy3hLE=";
        sha256_aarch64 = "sha256-uM5zMEO/AO32VmqUOzmc05FFm/lz76jPSSaQmeZUlFo=";
        openSha256 = "sha256-etbtw6LMRUcFoZC9EDDRrTDekV8JFRYmkp3idLaMk5g=";
        settingsSha256 = "sha256-8KB6T9f+gWl8Ni+uOyrJKiiH5mNx9eyfCcW/RjPTQQA=";
        persistencedSha256 = "sha256-zrstlt/0YVGnsPGUuBbR9ULutywi2wNDVxh7OhJM7tM=";

        patchFlags = [ "-p1" "-d" "kernel" ];
        patches = [
          # source: https://gist.github.com/joanbm/77f0650d45747b9a4dc8e330ade2bf5c
          (pkgs.fetchpatch {
            url = "https://gist.github.com/joanbm/77f0650d45747b9a4dc8e330ade2bf5c/raw/688b612624945926676de28059fe749203b4b549/nvidia-470xx-fix-linux-6.4.patch";
            hash = "sha256-OyRmezyzqAi7mSJHDjsWQVocSsgJPTW5DvHDFVNX7Dk=";
          })
        ];
      };
    };
  };
}
