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


# Auto upload
## // need to have the realdate be same one from build, i.e read from squisher maybe?
BUILD=` cat "vendor/b00sted/latest" | tail -1`

OUTFILE=out/target/product/shadow/b00stedICS-$DEVICE-$BUILD.zip
MD5=out/target/product/shadow/b00stedICS-$DEVICE-$BUILD.zip.md5sum

#####################################################
# START_TEMP
# // Temp workaround for apns being overrridden

rm -f $OUTFILE 
rm -f $MD5

cp -f vendor/b00sted/prebuilt/temp/apns-conf.xml out/target/product/shadow/system/etc/apns-conf.xml
cp -f vendor/b00sted/prebuilt/temp/shadow/camera.omap3.so out/target/product/shadow/system/lib/hw/camera.omap3.so

make -j$CORE bacon 

BUILD=` cat "vendor/b00sted/latest" | tail -1`
OUTFILE=out/target/product/shadow/$BUILD.zip
MD5=out/target/product/shadow/$BUILD.zip.md5sum

#END_TEMP
#####################################################

if [ $TYPE = "b" ]; then
	cp "$OUTFILE" ~/firstencounter/www/shadow/nightlies/"$BUILD".zip
	cp "$MD5" ~/firstencounter/www/shadow/nightlies/"$BUILD".zip.md5sum
else
	cp "$OUTFILE" ~/firstencounter/www/shadow/"$BUILD".zip
	cp "$MD5" ~/firstencounter/www/shadow/"$BUILD".zip.md5sum
fi

. ~/firstencounter/upload_files.sh




