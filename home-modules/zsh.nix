{ ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;

    prezto = {
      enable = true;
      ssh.identities = [ "id_rsa" "id_ed25519" ];
    };

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
      function dlnixbuildartifact() {
        nix copy --to file://$(pwd)/$1 --from ssh-ng://eu.nixbuild.net $2
      }
      eval "$(starship init zsh)"
      eval "$(zoxide init zsh)"
    '';
  };
}
