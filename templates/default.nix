{devenv}: let
  devenvWelcome = ''
    # `.devenv` should be added to `.gitignore`
    ```sh
      echo .devenv >> .gitignore
    ```
  '';

  poetry = {
    path = ./poetry;
    description = "Poetry + devenv template.";
    welcomeText = devenvWelcome;
  };
  rust = {
    path = ./rust;
    description = "Rust + devenv template.";
    welcomeText = devenvWelcome;
  };
  maturin = {
    path = ./maturin;
    description = "Maturin + devenv template.";
    welcomeText = devenvWelcome;
  };
in {
  inherit poetry rust maturin;
  default = devenv.templates.simple;
}
