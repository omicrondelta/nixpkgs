source $stdenv/setup

preConfigure() {
    cd src
}

postInstall() {
    romsDir=$out/share/atari800/roms
    mkdir -p $romsDir
    unzip $rom -d $romsDir

    # We don't need everything from this old DOS emulator.
    # just the Atari OS/B, XL, and Basic roms.
    rm $romsDir/*.{XFD,ATR,EXE,DOC}
}

genericBuild
