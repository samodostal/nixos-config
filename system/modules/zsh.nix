{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellInit = ''
      			. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
      		'';
  };
}
