#!/bin/bash
#
#This script downloads the needed tools to download the Open-BFG-Tech set of applications run this script as root.
#
#
#========================================================================
#
# declarations
#
#========================================================================

GAME_TECH_VERSION="Open-BFG-Tech SDK"
DEFAULT_PACKAGES="gcc git wget cmake unzip yasm tar"

#========================================================================
#
# install packages
#
#========================================================================

echo "=============================================="
echo "   Please Make Sure You are running as root   "
echo "                                              "
echo "     This can be done using sudo or su -      "	
echo "=============================================="
echo "Which type of distro do you run?"
echo "    1) rpm based with yum installed"
echo "    2) deb based with apt-get installed"
echo "    3) neither of these"

    read -p "Default to 3 : " response
	if [ "${response}" = '1' ]; then
		echo "Installing "${DEFAULT_PACKAGES}" please wait..."
		yum install ${DEFAULT_PACKAGES}
		echo
		echo "Initial Setup Script Has Finished."
		exit 2
	else	
	if [ "${response}" = '2' ]; then
		echo "Installing "${DEFAULT_PACKAGES}" please wait..."
		apt-get install ${DEFAULT_PACKAGES}
		echo
		echo "Initial Setup Script Has Finished."
		exit 2
	else
		echo "Unsupported Linux Distro, please manually install "${DEFAULT_PACKAGES}
		
	fi
	echo "thank you"
	echo "Initial Setup Script Has Finished."
	echo "You now have the needed packages installed to continue using the "${GAME_TECH_VERSION}	


		

