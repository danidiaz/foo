{
  description = "A very basic flake";

  inputs.nixpkgs= "nixpkgs/release-23.11";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.hello = 
      let myDeriv = nixpkgs "./foo.nix" {};
       in nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

  };
}
