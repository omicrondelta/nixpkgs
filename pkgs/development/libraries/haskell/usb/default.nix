{ cabal, bindingsLibusb, text, vector }:

cabal.mkDerivation (self: {
  pname = "usb";
  version = "1.2.0.1";
  sha256 = "10bpkrsnin9f3g1p5a84nhxx5xlfjdxisc0q60iain30rn99g2mk";
  buildDepends = [ bindingsLibusb text vector ];
  jailbreak = true;
  meta = {
    homepage = "http://basvandijk.github.com/usb";
    description = "Communicate with USB devices";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
