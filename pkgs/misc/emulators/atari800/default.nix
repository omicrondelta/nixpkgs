{stdenv, fetchurl, unzip, zlib, SDL}:

stdenv.mkDerivation {
  name = "atari800-3.1.0";
  builder = ./builder.sh;
  src = fetchurl {
    url = mirror://sourceforge/atari800/atari800-3.1.0.tar.gz;
    sha256 = "030yz5l1wyq9l0dmiimiiwpzrjr43whycd409xhhpnrdx76046wh";
  };
  rom = fetchurl {
    url = mirror://sourceforge/atari800/xf25.zip;
    md5 = "4dc3b6b4313e9596c4d474785a37b94d";
  };
  buildInputs = [unzip zlib SDL];
  configureFlags = "--target=default";
}
