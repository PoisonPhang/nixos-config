{ ... }:
{
  # Ensure that the `Screenshots/` directory exists
  home.file."Screenshots/.keep".text = "";

  services.flameshot = {
    enable = true;
    settings = {
      General = {
        savePath = "/home/cor/Screenshots";
        showStartupLaunchMessage = false;
        filenamePattern = "%F-%H%M%S";
        startupLaunch = true;
        saveAfterCopy = true;
      };
    };
  };
}
