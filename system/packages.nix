{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    gcc
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
    firefox
  ];

  programs.nix-ld.enable = true;
}
