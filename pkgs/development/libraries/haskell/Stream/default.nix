{ cabal, lazysmallcheck, QuickCheck }:

cabal.mkDerivation (self: {
  pname = "Stream";
  version = "0.4.7.1";
  sha256 = "08h0h6pwvfcj92n7mk5za36x9agpqnax12cjlvd68zwghjf9qxy3";
  buildDepends = [ lazysmallcheck QuickCheck ];
  meta = {
    description = "A library for manipulating infinite lists";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
