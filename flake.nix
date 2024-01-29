{
  description = "A very basic flake";

  inputs.nixpkgs.url = "nixpkgs/release-23.11";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.foo = 
      # https://discourse.nixos.org/t/using-nixpkgs-legacypackages-system-vs-import/17462/3
      let pkgs = nixpkgs.legacyPackages.x86_64-linux;
          myDeriv = pkgs.haskellPackages.callPackage ./foo.nix {};
       in myDeriv;

    packages.x86_64-linux.default = self.packages.x86_64-linux.foo;

  };
}
