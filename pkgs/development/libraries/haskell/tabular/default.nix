{ cabal, csv, html, mtl }:

cabal.mkDerivation (self: {
  pname = "tabular";
  version = "0.2.2.5";
  sha256 = "00d1f8yr7kbg30ziv09pb8f4apcvrfb6izb26my1s97kw9ixa740";
  buildDepends = [ csv html mtl ];
  jailbreak = true;
  meta = {
    homepage = "http://hub.darcs.net/kowey/tabular";
    description = "Two-dimensional data tables with rendering functions";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
