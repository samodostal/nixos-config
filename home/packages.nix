{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Applications
    spotify
    thunderbird
    ticktick
    godot_4
    imhex
    ns-usbloader
    # kicad (broken on nixos-unstable)
    bitwarden-desktop
    firefox

    # Terminal utilities
    kitty
    neofetch
    neovim
    lazygit
    gh
    tree-sitter
    tldr

    # Development
    nodejs_22
    python3
    jdk
    go
    php
    # rust via rustup
		# haskell via ghcup (not working)
		lua
    luajitPackages.luarocks
		dotnetCorePackages.sdk_9_0
  ];
}
