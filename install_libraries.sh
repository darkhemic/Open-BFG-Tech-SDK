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
LIBRARY="lib"
INSTALL_PREFIX=~/${GAME_TECH_VERSION}/${LIBRARY}
#SYSTEM is created to later build in cross-compiling features
TEMP="TEMP"
SYSTEM="linux"
INSTALL_LIBRARY=${INSTALL_PREFIX}/${SYSTEM}
#========================================================================
#
# Downloading libraries
#
#========================================================================

echo "We are going to install all library files in " ${LIBRARY} " which in this master directory."
cd
cd $GAME_TECH_VERSION
mkdir ${LIBRARY}
echo "Now Moving into "${LIBRARY}
cd $LIBRARY

#make system directories to install for cross-compiling later on.

mkdir ${SYSTEM}

echo "Downloading LibAV"
git clone git://git.libav.org/libav.git
 
echo "Downloading OpenAL Soft"
wget http://kcat.strangesoft.net/openal-releases/openal-soft-1.16.0.tar.bz2

echo "Downloading SDL2."
wget https://www.libsdl.org/release/SDL2-2.0.3.zip

#========================================================================
#
# Installing libraries
#
#========================================================================

#Installing SDL2-2.0.3

#unzip SDL2-2.0.3.zip
#mkdir temp
#cd temp
#./../SDL2-2.0.3/configure --prefix=$INSTALL_LIBRARY
#make
#make install



