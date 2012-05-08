#!/bin/sh

# Automated make script
# commands to run as follows from root dir:
# Place this in whatever vendor you use
# Command is as follows:
# 
# . vendor/whatever/the/path/is/make.sh "y/n for repo sync" "y/n make clean" "lunch combo(device)" "lunch combo(type)" "-j # for compile and sync"
# 
# Ex::
#
# . vendor/path/make.sh y y shadow eng 8 
########################################################################

# INPUT
REPO=$1
CLEAN=$2
LUNCH=$3
TYPE=$4
CORE=$5

if [ $REPO = "y" ]; then
	repo sync -j$CORE
else
	echo "No repo sync. Make sure you have the latest changes."
fi

. build/envsetup.sh

lunch cm_$LUNCH-$TYPE

if [ $CLEAN = "y" ]; then
	make clean
	time make -j$CORE bacon
else
	time make -j$CORE bacon
fi







