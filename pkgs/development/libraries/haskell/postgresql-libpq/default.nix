{ cabal, postgresql }:

cabal.mkDerivation (self: {
  pname = "postgresql-libpq";
  version = "0.9.0.1";
  sha256 = "0fdz9pkmrajqm026s6d5ib9kqg5ph93fw7l2xrgf22zagl53rzx3";
  extraLibraries = [ postgresql ];
  meta = {
    homepage = "http://github.com/lpsmith/postgresql-libpq";
    description = "low-level binding to libpq";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
