{ ... }:
{
  programs.git = {
    enable = true;
    userName = "PoisonPhang";
    userEmail = "17688291+PoisonPhang@users.noreply.github.com";
    lfs.enable = true;
    
    signing = {
      signByDefault = true;
      key = "2D9E03BF549DCDF6";
    };
    
    extraConfig = {
      color.ui = true;
      github.user = "PoisonPhang";
      credential.helper = "!gh auth git-credential";
    };
  };
}