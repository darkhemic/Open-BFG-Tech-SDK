#!/bin/bash
#
#This script creates the directories and downloads library files needed
#
#
#========================================================================
#
# declarations
#
#========================================================================
GAME_TECH_VERSION="Open-BFG-Tech"
LIBRARY=lib
INSTALL_PREFIX=~/${GAME_TECH_VERSION/${LIBRARY}
#SYSTEM is created to later build in cross-compiling features
SYSTEM=linux
INSTALL_LIBRARY=${INSTALL_PREFIX}/${SYSTEM}
#========================================================================
#
# install libraries
#
#========================================================================

echo "We are going to install all library files in " ${LIBRARY} " which in this master directory."
mkdir ${LIBRARY}
echo "Now Moving into "${LIBRARY}
cd $LIBRARY

#make system directories to install for cross-compiling later on.

mkdir linux
mkdir windows
mkdir macosx

echo "Downloading and setting up SDL2."
wget https://www.libsdl.org/release/SDL2-2.0.3.zip
unzip SDL2-2.0.3.zip
./SDL2-2.0.3/configure
make
make install --prefix=$INSTALL_PREFIX 
make clean
#rm config.log
#rm config.status
#rm libtool
#rm Makefile
#rm Makefile.rules
#rm sdl2.pc
#rm sdl2-config
#rm SDL2.spec
#rm SDL2-2.0.3.zip




