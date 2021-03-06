{ cabal, alex }:

cabal.mkDerivation (self: {
  pname = "bytestring-lexing";
  version = "0.4.3.2";
  sha256 = "09ymg1n21668wn4harxg0cqlz98fz990bangpy99w2z7d6cwbc05";
  buildTools = [ alex ];
  meta = {
    homepage = "http://code.haskell.org/~wren/";
    description = "Parse and produce literals efficiently from strict or lazy bytestrings";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
