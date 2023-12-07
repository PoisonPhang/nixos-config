{ ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      cat = "bat";
      browse = "fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'";
      bathelp = "bat --plain --language=help";
      checkpwr = "upower -i `upower -e | grep 'BAT'`";
      du = "dust";
      fzf-nix = "nix-env -qa | fzf";
      gs = "git status";
      icat = "kitty +kitten icat";
      kssh = "kitty +kitten ssh";
      la = "eza -las extension";
      lg = "lazygit";
      ls = "eza";
      nd = "nix develop --command zsh";
    };

    initExtra = ''
      function dlnixbuildartifact() {
        nix copy --to file://$(pwd)/$1 --from ssh-ng://eu.nixbuild.net $2
      }
    '';
  };
}
