{ inputs, ... }:{

  imports = [
    inputs.cosmic.flakeModules.default
  ];
  
  flake.homeModules.sudhagui = { pkgs, inputs, ... }:{
#     imports = with inputs.opinions.homeModules; [
#       plasma
#     ];
    home.packages = with pkgs; [
      zed-editor
      vlc
      kdePackages.arianna
      libreoffice-fresh
      discord
      guymager
    ];
  };
}
