#!/bin/sh

# Automated make script
# commands to run as follows from root dir:
# . vendor/b00sted/tools/make.sh "# of cores used to run" "build type"
########################################################################

# INPUT
DEVICE=droid2we
REPO=$1
CLEAN=$2
CORE=$3
TYPE=$4
sed -i "s|TYPE=.*|TYPE=${TYPE}|" vendor/b00sted/configs/common_versions.mk


if [ $REPO = "y" ]; then
	repo sync -j$CORE
else
	echo "No repo sync. Make sure you have the latest changes."
fi

## Do this until we figure out why perms are dropped each repo sync
chmod +x vendor/b00sted/tools/opticharger
chmod +x vendor/b00sted/tools/squisher

. build/envsetup.sh

lunch b00stedICS_$DEVICE-userdebug

if [ $CLEAN = "y" ]; then
	make clean
	time make -j$CORE bacon
else
	time make -j$CORE bacon
fi


############################################
# Auto upload
BUILD=` cat "vendor/b00sted/latest" | tail -1`

OUTFILE=out/target/product/droid2we/$BUILD.zip
MD5=out/target/product/droid2we/$BUILD.zip.md5sum

#nightly
if [ $TYPE = "nightly" ]; then
	cp "$OUTFILE" ~/www/droid2we/nightlies/"$BUILD".zip
#test
elif [ $TYPE = "test" ]; then
	cp "$OUTFILE" ~/www/tests/"$BUILD".zip
else
#public release
	cp "$OUTFILE" ~/www/droid2we/"$BUILD".zip
fi





