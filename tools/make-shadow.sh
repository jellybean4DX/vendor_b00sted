#!/bin/sh

# Automated make script
# commands to run as follows from root dir:
# . vendor/b00sted/tools/make.sh "# of cores used to run" "build type"
########################################################################
# INPUT
DEVICE=shadow
REPO=$1
CLEAN=$2
CORE=$3

if [ $REPO = "y" ]; then
	repo sync -j$CORE
else
	echo "No repo sync. Make sure you have the latest changes."
fi


## Do this until we figure out why perms are dropped each repo sync
chmod +x vendor/b00sted/tools/opticharger
chmod +x vendor/b00sted/tools/squisher

. build/envsetup.sh

lunch $DEVICE-userdebug

if [ $CLEAN = "y" ]; then
	make clean
	time make -j$CORE bacon
else
	time make -j$CORE bacon
fi


############################################
# Auto Upload
BUILDPROP=out/target/product/shadow/system/build.prop
MODVERSION=` sed -n -e'/ro\.modversion/s/^.*=//p' $BUILDPROP `

OUTFILE=out/target/product/shadow/$MODVERSION.zip
MD5=out/target/product/shadow/$BUILD.zip.md5sum

cp "$OUTFILE" ~/www/jelly/"$MODVERSION".zip





