{ composableDerivation, fetchurl }:

let edf = composableDerivation.edf;
    name = "gxemul-0.4.6";
in

composableDerivation.composableDerivation {} {
  inherit name;
  
  flags = {
    doc   = { installPhase = "mkdir -p \$out/share/${name}; cp -r doc \$out/share/${name};"; implies = "man"; };
    demos = { installPhase = "mkdir -p \$out/share/${name}; cp -r demos \$out/share/${name};"; };
    man   = { installPhase = "cp -r ./man \$out/;";};
  };

  cfg = {
    docSupport = true;
    demosSupport = true;
    manSupport = true;
  };

  installPhase = "mkdir -p \$out/bin; cp gxemul \$out/bin;";

  src = fetchurl {
    url = http://gxemul.sourceforge.net/src/gxemul-0.4.7.2.tar.gz;
    sha256 = "173gs5kvbxgjfmibq7i2aakq9sax0cx09zinr1ab984b2nid6ncn";
  };

  configurePhase = "./configure";

  meta = {
    license = "BSD";
    description = "A Machine Emulator, mainly emulates MIPS, but supports other CPU types";
    homepage = http://gavare.se/gxemul/;
  };

  mergeAttrBy = { installPhase = a : b : "${a}\n${b}"; };
}
