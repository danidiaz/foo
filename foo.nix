{ mkDerivation, aeson, base, lib }:
mkDerivation {
  pname = "foo";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ aeson base ];
  license = lib.licenses.bsd3;
}
