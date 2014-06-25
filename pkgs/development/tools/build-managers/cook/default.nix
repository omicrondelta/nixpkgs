{stdenv, fetchurl, groff, bison}:

stdenv.mkDerivation {
  name = "cook-2.34";
  src = fetchurl {
    url = "http://miller.emu.id.au/pmiller/software/cook/cook-2.34.tar.gz";
    sha256 = "104saqnqql1l7zr2pm3f718fdky3ds8j07c6xvwrs1rfkhrw58yw";
  };

  buildInputs = [ groff bison ];
}

