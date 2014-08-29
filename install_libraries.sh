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

echo ""
echo "Downloading LibAV"
echo ""
git clone git://git.libav.org/libav.git
 
echo ""
echo "Downloading OpenAL Soft 1.16.0"
echo ""
wget http://kcat.strangesoft.net/openal-releases/openal-soft-1.16.0.tar.bz2

echo ""
echo "Downloading SDL2-2.0.3"
echo ""
wget https://www.libsdl.org/release/SDL2-2.0.3.zip

#========================================================================
#
# Installing libraries
#
#========================================================================

echo ""
echo "Installing LibAV"
echo ""
mkdir temp
cd temp
./../libav/configure --prefix=$INSTALL_LIBRARY
make
make install
echo ""
echo "cleaning up LibAV"
echo ""
cd
cd $GAME_TECH_VERSION
cd $LIBRARY
rm -rf temp
zip libav libav.zip
rm -rf libav

echo ""
echo "Installing OpenAL Soft 1.16.0"
echo ""
tar xvjf openal-soft-1.16.0.tar.bz2
mkdir temp
cd temp
cmake ../openal-soft-1.16.0/  -DCMAKE_INSTALL_PREFIX:PATH=$INSTALL_LIBRARY
make
make install
echo ""
echo "cleaning up LibAV"
echo ""
cd
cd $GAME_TECH_VERSION
cd $LIBRARY
rm -rf temp



 
echo ""
echo "Installing SDL2-2.0.3"
echo ""

unzip SDL2-2.0.3.zip
mkdir temp
cd temp
./../SDL2-2.0.3/configure --prefix=$INSTALL_LIBRARY
LDFLAGS="-L$INSTALL_LIBRARY/lib" CFLAGS="-I$INSTALL_LIBRARY/include" make
make install
echo ""
echo "cleaning up SDL2-2.0.3"
echo ""
cd
cd $GAME_TECH_VERSION
cd $LIBRARY
rm -rf temp
rm -rf SDL2-2.0.3


#LDFLAGS="-L/home/me/local/lib" CFLAGS="-I/home/me/local/include" make
#above is to use the /lib/linux path when building
