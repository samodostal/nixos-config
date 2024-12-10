{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    home-manager
    gnumake
    gcc
    clang
    clang-tools
    cmake
    gdb
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
    killall
    xclip
    fzf
    ripgrep
    fd
    just
    openssl
    man-pages
    man-pages-posix
  ];

  programs.nix-ld.enable = true;
}
