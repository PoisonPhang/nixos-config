{ inputs, pkgs, ... }:
{
  programs.helix = {
    enable = true;
    package = inputs.helix.packages.${pkgs.system}.default;
    
    settings = {
      theme = "catppuccin_mocha";
      editor = {
        line-number = "relative";
        cursorline = true;
        color-modes = true;
        scrolloff = 8;
        soft-wrap.enable = true;
        
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        
        indent-guides = {
          render = true;
        };
      };
    };
    
    languages = [
      {
        name = "rust";
        config = {
          checkOnSave.command = "clippy";
        };
      }

      {
        name = "nix";
        config = {
          auto-format = true;
        };
      }
    ];
  };
}