{ pkgs, ... }:
{
  users = {
    users.poisonphang = {
      isNormalUser = true;
      description = "Connor Davis";
      extraGroups = [ "docker" "networkmanager" "wheel" "plugdev" ];
      shell = pkgs.zsh;
      home = "/home/poisonphang";
    };
  groups.plugdev = {};
  };
}
