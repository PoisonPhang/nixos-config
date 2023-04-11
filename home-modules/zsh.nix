{...}:
{
  programs.zsh = { 
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;    

    shellAliases = {
      fzf-nix = "nix-env -qa | fzf";
      icat = "kitty +kitten icat";
      lg = "lazygit";
      ls = "exa";
      la = "exa -las extension";
      nd = "nix develop --command zsh";
      gs = "git status";
      checkpwr = "upower -i `upower -e | grep 'BAT'`";
    };
    
    initExtra = ''
      eval "$(starship init zsh)"
      eval "$(zoxide init zsh)"
    '';
  };
}