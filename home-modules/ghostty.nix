{ ... }:
{
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "catppuccin-mocha";
      font-family = "Comic Code Ligatures";
      window-decoration = false;
    };
  };
}
