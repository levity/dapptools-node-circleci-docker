curl -L https://nixos.org/nix/install | sh
. "$HOME/.nix-profile/etc/profile.d/nix.sh"
nix-env -iA dapp hevm seth solc -if https://github.com/dapphub/dapptools/tarball/master --substituters https://dapp.cachix.org --trusted-public-keys dapp.cachix.org-1:9GJt9Ja8IQwR7YW/aF0QvCa6OmjGmsKoZIist0dG+Rs=

