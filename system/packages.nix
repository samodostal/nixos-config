{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    firefox
    git
    vim
    wget
    curl
    unrar
    xclip
    gnupg
    pinentry-curses
    home-manager
    just
    ripgrep
    jdk
    exfat
    exfatprogs
  ];
}
