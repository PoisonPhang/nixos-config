{ pkgs-unstable, ... }:
{
  programs.kitty = {
    enable = true;
    package = pkgs-unstable.kitty;
    
    settings = {
      confirm_os_window_close = 0;
      shell_integration = "enabled";
      tab_title_template = "{title}";
      active_tab_title_template = "{title} - {num_windows} {layout_name}";
      tab_activity_symbol = "◉";
    };
    
    font = {
      name = "Comic Code Ligatures";
      size = 16;
    };
    
    keybindings = {
      "kitty_mod+n" = "new_window_with_cwd";
      "super+shift+enter" = "new_os_window_with_cwd";
      "alt+enter" = "new_window_with_cwd";
      "alt+w" = "close_window";
      "alt+j" = "next_window";
      "alt+t" = "new_tab";
      "alt+]" = "next_tab";
      "alt+[" = "previous_tab";
      "alt+k" = "previous_window";
      "alt+shift+k" = "move_window_backward";
      "alt+r" = "start_resizing_window";
      "alt+shift+r" = "set_tab_title";
      "alt+p" = "next_layout";
      "alt+shift+p" = "last_used_layout";
    };

    theme = "Catppuccin-Mocha";
  };
}