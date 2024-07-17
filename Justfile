deploy:
  just deploy-system
  just deploy-home

deploy-debug:
  just deploy-system-debug
  just deploy-home-debug

update:
  nix flake update

history:
  nix profile history --profile /nix/var/nix/profiles/system

repl:
  nix repl -f flake:nixpkgs

clean:
  sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d

repair-store:
	sudo nix-store --repair --verify --check-contents

gc:
  sudo nix-collect-garbage --delete-old

# -------------------------------------------------------------------------------------------

deploy-system:
  nixos-rebuild switch --flake . --use-remote-sudo

deploy-system-debug:
  nixos-rebuild switch --flake . --use-remote-sudo --show-trace --verbose

deploy-home:
  home-manager switch --flake .\?submodules=1

deploy-home-debug:
  home-manager switch --flake .\?submodules=1 --show-trace
