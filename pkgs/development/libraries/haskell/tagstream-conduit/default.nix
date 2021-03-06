{ cabal, attoparsec, attoparsecConduit, blazeBuilder
, blazeBuilderConduit, caseInsensitive, conduit, conduitExtra
, dataDefault, hspec, HUnit, QuickCheck, resourcet, text
, transformers, xmlConduit
}:

cabal.mkDerivation (self: {
  pname = "tagstream-conduit";
  version = "0.5.5.1";
  sha256 = "0bpxjhqqqigfnwcxx3h2am5zmgr1lyaxaac3lnz490j6zf8x9jn7";
  buildDepends = [
    attoparsec attoparsecConduit blazeBuilder blazeBuilderConduit
    caseInsensitive conduit conduitExtra dataDefault resourcet text
    transformers xmlConduit
  ];
  testDepends = [ conduit hspec HUnit QuickCheck resourcet text ];
  meta = {
    homepage = "http://github.com/yihuang/tagstream-conduit";
    description = "streamlined html tag parser";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
