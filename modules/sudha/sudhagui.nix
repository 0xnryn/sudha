{ inputs, ... }:{

  imports = [
    inputs.cosmic.flakeModules.default
  ];
  
  flake.homeModules.sudhagui = { pkgs, inputs, ... }:{
    imports = with inputs.opinions.homeModules; [
      plasma
      helium-browser
    ];
    home.packages = with pkgs; [
      zed-editor
      vlc
      alfis
      kdePackages.arianna
      libreoffice-fresh
      discord
    ];
  };
}