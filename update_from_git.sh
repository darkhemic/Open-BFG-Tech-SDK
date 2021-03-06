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
GAME_TECH_EDITOR_VERSION="Open-BFG-Editor"
GAME_TECH_EDITOR_GIT="https://github.com/darkhemic/Open-BFG-Editor.git"

#========================================================================
#
# Update from GITHUB
#
#========================================================================

cd
cd $GAME_TECH_VERSION
cd $GAME_TECH_VERSION"-SDK"
git status -s
git fetch
git pull origin master
git merge master

cd
cd $GAME_TECH_VERSION
cd $GAME_TECH_ENGINE_VERSION
git status -s
git fetch
git pull origin master
git merge master

cd
cd $GAME_TECH_VERSION
cd $GAME_TECH_EDITOR_VERSION
git status -s
git fetch
git pull origin master
git merge master


