{ pkgs-unstable, ... }:
{
  programs.ghostty = {
    enable = true;
    package = pkgs-unstable.ghostty;

    settings = {
      theme = "Catppuccin Mocha";
      font-family = "Comic Code Ligatures";
      font-size = 14;
      window-decoration = false;
      mouse-scroll-multiplier = 0;
    };
  };
}
