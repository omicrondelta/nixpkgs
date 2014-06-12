{ cabal, hashable, hsyslog, pipes, pipesSafe, systemd-journal, text
, transformers, uniplate, unixBytestring, unorderedContainers, uuid
, vector
}:

cabal.mkDerivation (self: {
  pname = "libsystemd-journal";
  version = "1.2.0";
  sha256 = "10gsqcy5f7m6f0giqhfcqspb17b3gyib4cpw5nrdl7hiah13hi7x";
  buildDepends = [
    hashable hsyslog pipes pipesSafe text transformers uniplate
    unixBytestring unorderedContainers uuid vector
  ];
  extraLibraries = [ systemd-journal ];
  meta = {
    homepage = "http://github.com/ocharles/libsystemd-journal";
    description = "Haskell bindings to libsystemd-journal";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.stdenv.lib.platforms.linux;
  };
})