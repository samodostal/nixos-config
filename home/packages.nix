{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Gnome apps
    gnome-tweaks
    gnome.dconf-editor

    # Gnome extensions
    gnomeExtensions.space-bar
    gnomeExtensions.disable-workspace-switcher-overlay
    gnomeExtensions.unite
    gnomeExtensions.color-picker
    gnomeExtensions.cronomix
    gnomeExtensions.notification-timeout

    # Applications
    spotify
    thunderbird
    ticktick
    godot_4
    saleae-logic-2
    imhex
    ns-usbloader
    kicad
    blender
    freecad
    bitwarden-desktop
    firefox
    virtualbox

    # Terminal utilities
    kitty
    tmux
    tmuxPlugins.tokyo-night-tmux
    neofetch
    neovim
    lazygit
    lazydocker
    gh
    tree-sitter
    tldr
    thefuck
    btop

    # Development kits
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
    qmk
  ];
}
