{ config, pkgs, lib, hostname, user, ... }:
{
  imports = [
    ./packages.nix
    ./modules/index.nix
  ];

  home.username = user;
  home.homeDirectory = "/home/${user}";

  # Link neovim config
  home.file.".config/nvim" = {
    source = ./neovim-config;
    recursive = true;
    executable = true;
  };

  programs.home-manager.enable = true;

  # Initial home install version, DON'T CHANGE
  home.stateVersion = "24.05";
}
