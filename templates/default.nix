{devenv}: let
  devenvWelcome = ''
    # `.devenv` should be added to `.gitignore`
    ```sh
      echo .devenv >> .gitignore
    ```
  '';

  c = {
    path = ./c;
    description = "C/C++ template.";
    welcomeText = devenvWelcome;
  };
  maturin = {
    path = ./maturin;
    description = "Maturin template.";
    welcomeText = devenvWelcome;
  };
  node = {
    path = ./node;
    description = "Node & typescript template.";
    welcomeText = devenvWelcome;
  };
  poetry = {
    path = ./poetry;
    description = "Poetry template.";
    welcomeText = devenvWelcome;
  };
  rust = {
    path = ./rust;
    description = "Rust template.";
    welcomeText = devenvWelcome;
  };
in {
  inherit c maturin node poetry rust;
  default = devenv.templates.simple;
}
