#!/bin/sh

# Automated make script
# commands to run as follows from root dir:
# . vendor/b00sted/tools/make.sh "# of cores used to run" "build type"

CORE=$1
TYPE=$2
CLEAN=$3
sed -i "s|TYPE=.*|TYPE=${TYPE}|" vendor/b00sted/configs/common_versions.mk

. build/envsetup.sh

lunch b00stedICS_shadow-userdebug

if [ $CLEAN = "y" ]; then
	make clean
	time make -j$CORE bacon
else
	time make -j$CORE bacon
fi

# So for test builds on -j6 after make clean type:
# . vendor/b00sted/tools/make.sh 6 b y


# Auto upload
## // need to have the realdate be same one from build, i.e read from squisher maybe?
BUILD=` cat "vendor/b00sted/latest" | tail -1`

OUTFILE=out/target/product/shadow/b00stedICS-$BUILD.zip
MD5=out/target/product/shadow/b00stedICS-$BUILD.zip.md5sum

if [ $TYPE = "b" ]; then
	cp "$OUTFILE" ~/firstencounter/www/tests/b00stedICS-"$BUILD".zip
	cp "$MD5" ~/firstencounter/www/tests/b00stedICS-"$BUILD".zip.md5sum
else
	cp "$OUTFILE" ~/firstencounter/www/b00stedICS-"$BUILD".zip
	cp "$MD5" ~/firstencounter/www/b00stedICS-"$BUILD".zip.md5sum
fi
. ~/firstencounter/upload_files.sh




