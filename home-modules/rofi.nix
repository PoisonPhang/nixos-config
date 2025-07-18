{ pkgs, ... }:
{
  programs.rofi = {
    enable = true;

    terminal = "ghostty";
    theme = "./catppuccin-mocha.rasi";

    plugins = with pkgs; [ rofi-emoji rofi-calc rofi-power-menu ];

    extraConfig = {
      modi = "run,drun,window";
      icon-theme = "Oranchelo";
      show-icons = true;
      terminal = "ghostty";
      drun-display-format = "{icon} {name}";
      location = 0;
      disable-history = false;
      hide-scrollbar = true;
      display-drun = "   Apps ";
      display-run = "   Run ";
      display-window = " 﩯  Window";
      display-Network = " 󰤨  Network";
      sidebar-mode = true;
    };
  };

  home.file.".config/rofi/catppuccin-mocha.rasi".source = ./rofi/catppuccin-mocha.rasi;
}
