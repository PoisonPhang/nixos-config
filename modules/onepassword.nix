{ pkgs-unstable, ... }:
{
  programs._1password-gui = {
    enable = true;
    # package = pkgs-unstable._1password-gui;
    polkitPolicyOwners = [ "poisonphang" ];
  };
}
