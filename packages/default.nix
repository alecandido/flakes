{
  systems,
  nixpkgs,
  ...
}: let
  forEachSystem = nixpkgs.lib.genAttrs (import systems);
in
  forEachSystem (system: let
    pkgs = nixpkgs.legacyPackages.${system};
    python = pkgs.python311;
  in {
    apfel = "";
  })
