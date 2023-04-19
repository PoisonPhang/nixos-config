{ pkgs, ... }:
{
  users.users.poisonphang = {
    isNormalUser = true;
    description = "Connor Davis";
    extraGroups = [ "docker" "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    home = "/home/poisonphang";
  };
}