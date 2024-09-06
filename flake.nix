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

