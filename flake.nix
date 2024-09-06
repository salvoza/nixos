#{
#  description = "A very basic flake";

#  inputs = {
#    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
#  };

#  outputs = { self, nixpkgs }: {

#   packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

#    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

#  };
#}



{
  description = "NixOS Configuration Flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

  outputs = { self, nixpkgs }: {
    nixosConfigurations.myNixOSSystem = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux"; # or "aarch64-linux" for ARM systems
      modules = [
        ./configuration.nix # Your NixOS configuration file
      ];
    };
  };
}

