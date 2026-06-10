{ inputs, lib, config, ... }:{

  imports = [
    inputs.cosmic.flakeModules.default
  ];

  flake.nixosModules.sudha = { config, pkgs, lib, ... }: {
    
    # sops.secrets."sudhassh" = {
    #   sopsFile = "${inputs.self}/modules/users/sudha/sudhasecrets.yaml"; # <-- ADD THIS
    #   owner = "sudha";
    #   mode = "0400"; 
    # };
    
    # sops.secrets."sudhauserpass" = {
    #   sopsFile = "${inputs.self}/modules/users/sudha/sudhasecrets.yaml"; # <-- ADD THIS
    # };
    users.users.sudha = {
      isNormalUser = true;
      extraGroups = [ "wheel" "dialout" ];
      # hashedPasswordFile = config.sops.secrets."sudhauserpass".path;
    };
  };
}