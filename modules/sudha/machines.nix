{ inputs, lib, config, ... }:{

  imports = [
    inputs.cosmic.flakeModules.default
  ];

  flake.homeConfigurations = {
    "sudha@nryn-laptop" = inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";
      extraSpecialArgs = { inherit inputs; };
      modules = with inputs.self.homeModules; [
        sudhacli
        sudhagui
      ];
    };

    "sudha@nryn-laptop-wsl" = inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";
      extraSpecialArgs = { inherit inputs; };
      modules = with inputs.self.homeModules; [
        sudhacli
      ];
    };
  };
}


