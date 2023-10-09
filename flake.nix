{
  description = "Personal flake utilities";

  inputs.devenv.url = "github:cachix/devenv";

  outputs = {devenv, ...}: {
    templates = (import ./templates) {inherit devenv;};
  };
}
