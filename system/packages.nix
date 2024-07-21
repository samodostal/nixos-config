{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    home-manager
    gnumake
    gcc
    cmake
    git
    vim
    wget
    curl
    unrar
		gmp
		ncurses
		pkg-config
    gnupg
    exfat
    exfatprogs
    unzip
    xclip
    fzf
    ripgrep
    just
  ];

  programs.nix-ld.enable = true;
}
