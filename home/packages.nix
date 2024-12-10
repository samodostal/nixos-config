{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Gnome apps
    gnome-tweaks
    dconf-editor

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
    ns-usbloader
    blender
    freecad
    bitwarden-desktop
    firefox
    plantuml
    graphviz
    vlc

    # Embedded
    (kicad.override { addons = [ pkgs.kicadAddons.kikit pkgs.kicadAddons.kikit-library ]; })
    kikit
    saleae-logic-2
    imhex

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
    difftastic

    # Development kits
    nodejs_22
    python3
    jdk
    go
    php
    # rust via rustup
    # haskell via ghcup (not working)
    lua51Packages.lua
    lua51Packages.luarocks

    dotnetCorePackages.sdk_9_0
    qmk
  ];
}
