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

    # Terminal utilities
		kitty
    neofetch
    neovim
    lazygit
    gh
  ];
}
