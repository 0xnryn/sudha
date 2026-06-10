{ inputs, lib, config, ... }:{

  imports = [
    inputs.cosmic.flakeModules.default
  ];

  flake.homeConfigurations = {
    "sudha@laptop" = inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";
      extraSpecialArgs = { inherit inputs; };
      modules = with inputs.self.homeModules; [
        sudhacli
        sudhagui
      ];
    };

    # 2. Example: A future headless sovereign server or Yggdrasil node
    # "sudha@meshnode" = inputs.home-manager.lib.homeManagerConfiguration {
    #   pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";
    #   extraSpecialArgs = { inherit inputs; };
    #   modules = [
    #     inputs.self.homeModules.sudhacli 
    #     # No sudhagui here since a mesh node server doesn't need plasma/vlc!
    #   ];
    # };

  };
}


