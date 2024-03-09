{
  description = "Personal flake utilities";

  inputs = {
    # Package sets
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    # Dev shells
    devenv.url = "github:cachix/devenv";

    # Utilities
    systems.url = "github:nix-systems/default";
  };

  outputs = {devenv, ...} @ inputs: {
    templates = (import ./templates) {inherit devenv;};
    packages = (import ./packages) inputs;
  };
}
