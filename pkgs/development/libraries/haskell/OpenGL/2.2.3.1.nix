{ cabal, libX11, mesa }:

cabal.mkDerivation (self: {
  pname = "OpenGL";
  version = "2.2.3.1";
  sha256 = "1vl5i1l76mjc0p18awdrvdcpszaz1z891505cqmn1xlld7ijb14z";
  extraLibraries = [ libX11 mesa ];
  meta = {
    homepage = "http://www.haskell.org/HOpenGL/";
    description = "A binding for the OpenGL graphics system";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
