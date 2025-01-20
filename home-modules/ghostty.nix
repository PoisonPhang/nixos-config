{ ... }:
{
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "catppuccin-mocha";
      font-family = "Comic Code Ligatures";
      font-size = 14;
      window-decoration = false;
      mouse-scroll-multiplier = 0;
    };
  };
}
