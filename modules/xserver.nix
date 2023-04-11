{ currentSystemName, ... }:
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
  } // (if currentSystemName == "poisonphang-dt" then {
      videoDrivers = [ "nvidia" ];
  } else {});
}