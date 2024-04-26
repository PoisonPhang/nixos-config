{ ... }:
{
  networking = {
    hostName = "poisonphang-nixos";
    networkmanager.enable = true;
    enableIPv6 = false;
  };
}
