
===============================================

Open-BFG-Tech-SDK 
	as in Open BIG FREE GAME Tech Software Development Kit

===============================================

Open-BFG-Tech-SDK is a set of scripts to automate the downloading and building of the Open-BFG-Engine, Open-BFG-Editor and dependencies for the projects.

The idea is that if the engine and editor are built and run from it's own set of libraries then the tools can be bugfixed and made more stable and be completely independent of the Linux Distro you choose to use. 

This is done in an effort to start making the Doom3-BFG engine easier to use and more user friendly in the future by first bringing the tools together into a complete game development kit, the changes to make it more user friendly will happen after the install and build process is streamlined. 

The Open-BFG-Engine is based on https://github.com/RobertBeckebans/RBDOOM-3-BFG a fork of the Doom3-BFG source code 

And the Open-BFG-Editor is based on https://github.com/OpenTechEngine/DarkRadiant a fork of the DarkRadiant Editor

The Open-BFG-Tech is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

===============================================

Setup

===============================================

Step 1. 
Two options for getting started. 

Option one - is you download this repo's zip file which you can delete after you run 2 scripts.

Option two - in your home directory you create the Open-BFG-Tech folder and clone this project.

	cd
	mkdir Open-BFG-Tech
	cd Open-BFG-Tech
	git clone https://github.com/darkhemic/Open-BFG-Tech-SDK.git

	**note if git is not installed on your system you can 
		yum install git
 		or
		apt-get install git
	**as root on your system.

Step 2. 
Please run initial_setup.sh as the root user. 

sudo ./initial_setup.sh
 or
su -
cd /path/to/the/file/
./initial_setup.sh

This depends on the linux distro you are running.

initial_setup.sh installs tools that are needed to use the Open-BFG-Tech game development kit that aren't libraries needed to build the projects. Tools such as make, git, cmake. You may already have some of these tools already installed which is ok this will double check to make sure.

Step 3. 
start new terminal as your normal user and run the following
	
	cd /path/to/the/file/first_install.sh

	if you already cloned the git it would be
	cd
	cd Open-BFG-Tech/Open-BFG-Tech-SDK
	./first_install.sh

This script is going to clone create the Open-BFG-Tech directory in your home directory and clone the Open-BFG-Tech-SDK, Open-BFG-Engine and Open-BFG-Editor from github. Cloning the github allows you to easily update the source code later on as bugfixes are made by the community even if you aren't a programmer thanks to a script included in Open-BFG-Tech-SDK.

Step 4.
The first_install.sh askes you if you want to install the dependencies during the first install. 

If you choose not to do it at that time please run install_libraries.sh

	cd
	cd Open-BFG-Tech/Open-BFG-Tech-SDK
	./install_libraries.sh 

Step 5.

	Currently this is all that is done. I (darkhemic) am continuing to work on the script for all the needed dependencies for building and linking them to /lib/linux inside the Open-BFG-Tech folder to build the engine without breaking anything inside the project which right now is a direct fork with no code changes of RBDoom-3-BFG.
 
