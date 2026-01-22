{
  description = "Ben's Flakes";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dms = {
      url = "github:AvengeMedia/DankMaterialShell/stable";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, niri, dms, noctalia, ... }@inputs: {
    # System Configuration
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs;
      };
      modules = [
	      ./configuration.nix
        niri.nixosModules.niri
	      dms.nixosModules.dank-material-shell
	      noctalia.nixosModules.default
	      home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.ben = ./home.nix;
            backupFileExtension = "backup";
            # Optionally, use home-manager.extraSpecialArgs to pass
            # arguments to home.nixv
          };
        }
      ];
    };
  };
}
