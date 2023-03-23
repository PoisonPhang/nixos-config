{ pkgs, ... }:
{
  users.users.poisonphang = {
    isNormalUser = true;
    description = "Connor Davis";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    home = "/home/poisonphang";
  };
}