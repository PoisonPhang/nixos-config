{ ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      bathelp = "bat --plain --language=help";
      browse = "fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'";
      cat = "bat";
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
      tree = "exa -T";
    };

    initExtra = ''
      function dlnixbuildartifact() {
        nix copy --to file://$(pwd)/$1 --from ssh-ng://eu.nixbuild.net $2
      }
      function yy() {
      	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
      	yazi "$@" --cwd-file="$tmp"
      	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
      		cd -- "$cwd"
      	fi
      	rm -f -- "$tmp"
      }
    '';
  };
}
