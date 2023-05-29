{ pkgs, ... }:
{
  gtk = {
    enable = true;

    theme = {
      name = "Catppuccin-Mocha-Standard-Red-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "red" ];
        size = "standard";
        tweaks = [ "black" ];
        variant = "mocha";
      };
    };

    iconTheme = {
      package = pkgs.paper-icon-theme;
      name = "Paper";
    };
  };
}
