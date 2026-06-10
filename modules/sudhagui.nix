{ inputs, lib, config, ... }:{

  imports = [
    inputs.cosmic.flakeModules.default
  ];
  
  flake.homeModules.sudhagui = { config, pkgs, lib, ... }:{
    home.packages = with pkgs; [
      zed-editor
      vlc
    ];
  };
}