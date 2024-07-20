{ pkgs, ... }: {
	nixpkgs.config.allowUnfree = true;

	environment.systemPackages = with pkgs; [
		gnumake
		gcc
		cmake
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
		fzf
		ripgrep
		exfat
		exfatprogs
		unzip
		firefox
	];

	programs.nix-ld.enable = true;
							 }
