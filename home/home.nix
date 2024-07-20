{ config, pkgs, lib, inputs, hostname, user, ... }:
{
  imports = [
    ./packages.nix
    ./modules/index.nix
  ];

  home.username = user;
  home.homeDirectory = "/home/${user}";
	home.sessionPath = [ "$HOME/.cargo/bin/" ];

	nixpkgs.overlays = [ inputs.neovim-nightly-overlay.overlays.default ];

  # Link neovim config as symlink
  home.file.".config/nvim" = {
    source = (config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos-config/home/neovim-config");
  };

  programs.home-manager.enable = true;

  # Initial home install version, DON'T CHANGE
  home.stateVersion = "24.05";
}
