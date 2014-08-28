#!/bin/bash
#
#This script creates the directories and downloads the engine, editor and library while also allowing each project's git to stay uncorrupted and independent.
#
#
#========================================================================
#
# declarations
#
#========================================================================

GAME_TECH_VERSION="Open-BFG-Tech"
GAME_TECH_SDK_GIT="https://github.com/darkhemic/Open-BFG-Tech-SDK.git"
GAME_TECH_ENGINE_VERSION="Open-BFG-Engine"
GAME_TECH_ENGINE_GIT="https://github.com/darkhemic/Open-BFG-Engine.git"
GAME_TECH_EDITOR_VERSION="Open-BFG-Engine"
GAME_TECH_EDITOR_GIT="https://github.com/darkhemic/Open-BFG-Editor.git"
#========================================================================
#
# Directory Setup
#
#========================================================================
echo "Let's move to your base home directory" 
cd
echo "Making " ${GAME_TECH_VERSION} "Directory in your home directory" 
mkdir ${GAME_TECH_VERSION}
echo "Now we are going to create a github clone of the" ${GAME_TECH_VERSION}"-SDK."
echo "This will make it easier to stay up-to-date"
cd ${GAME_TECH_VERISON}
echo "cloning github "${GAME_TECH_VERSION}"-SDK now"
git clone ${GAME_TECH_SDK_GIT}
echo "cloning github "${GAME_TECH_ENGINE_VERSION}" now."
git clone ${GAME_TECH_ENGINE_GIT}
echo "cloning github "${GAME_TECH_EDITOR_VERSION}" now."
git clone ${GAME_TECH_EDITOR_GIT}


