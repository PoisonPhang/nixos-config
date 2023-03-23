{...}:
{
  programs.zsh = { 
    enable = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;    

    shellAliases = {
      fzf-nix = "nix-env -qa | fzf";
      icat = "kitty +kitten icat";
      lg = "lazygit";
      ls = "exa";
      la = "exa -A";
      nd = "nix develop --command zsh";
      gs = "git status";
    };
    
    initExtra = ''
      eval "$(starship init zsh)"
      eval "$(zoxide init zsh)"
    '';
  };
}