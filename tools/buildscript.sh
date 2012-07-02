#!/bin/bash

# Buildscripts for any devices in vendorsetup.sh
# located in vendor/b00sted only
#
# BMc08GT 
# Modified from drewis original (Evervolv)
# for use with our server only (but can be modified)
# ===================================================

# Uploading
# Rsync auto-uploads the www dir to server 
UL_DIR="~/www/b0map/"



# Zip naming
# Assumes $(PREFIX)_$(DEVICE)_$(DATE).zip
# $DEVICE must be an element of $TARGETLIST
PREFIX="pr0ject-0map"

# vendor path
SHORT="b00sted"

# report file
REPORT_FILE=~/logs/report-`date +%Y%m%d`

# Args
SYNC=0
UPLOAD=1
CLOBBER=0
CLEAN=0
CCACHE=0
UL_TYPE=0
LINARO_BUILD=0



# DONT TOUCH DAMNIT
FAILNUM=0
FAILLIST=(zero)
TIMESTART=`date +%s`
UPLOAD=0


# device stripper
if [ -e vendor/$SHORT/vendorsetup.sh ];  then
	TARGETLIST=($(<vendor/$SHORT/vendorsetup.sh))
	# at this point every other entry is add_lunch_combo, so remove them
	TARGETLIST=(${TARGETLST[@]/add_lunch_combo/})
	# the rest of this script relies on uniform naming, ie shadow
	# bugl3SS_shadow-userdebug WILL NOT work so remove pre/post fixes
	TARGETLIST=(${TARGETLIST[@]#*_})
	TARGETLIST=(${TARGETLIST[@]%-*})
else
	TARGETLIST=
fi

function print_help() {
cat <<EOF
Usage: `basename $0` -chklsu -p <path> -t <target>|"<target> <target>"

Options:
-h show this help
-l Linaro build
-k clobber tree
-p directory(path) for upload
-s sync repo
-u USE_CCACHE
-t build specified target(s)
Additional Arguments:
help show this help
douche no-op to get past the no args error and build with defaults
this is not recommended.. you should at least run -s
EOF
}

# Accepts 2 args detailing the issue
function log_fail() {
    # increment first, item 0 will be used as the sentinal
    ((++FAILNUM))
    FAILLIST[$FAILNUM]="$2 failed at $1"
    echo ${FAILLIST[$FAILNUM]}
}


function print_failures() {
    while [ $FAILNUM -gt 0 ]; do
echo "${FAILLIST[$FAILNUM]}" | tee -a $REPORT_FILE
        ((--FAILNUM))
    done
}

# Up to 1 arg: 1. Error message
function bail() {
    [ -z "$1" ] && exit
echo "$1"
    exit
}

# Requires TIMESTART=`date +%s` at beginning of file
function calc_run_time() {
    declare -i tf td uh um us
    tf=`date +%s`;td=$((tf-TIMESTART));uh=$((td/3600))
    uh=$(($((td-$((3600*uh))))/60));us=$((td-$((3600*uh))-$((60*uh))))
    echo "BUILD TIME: ${uh}h ${uh}m ${us}s" | tee -a $REPORT_FILE
}

#
# Let's Start this Shit
#
if [ $# -eq 0 ]; then
	echo " This script cannot be called without arguments"; print_help; bail;
fi

if [ "$1" == "help" ]; then
	print_help; bail;
fi

while getargs ":hklpsu:t:" opt; do
	case $arg in
		h) print_help; bail;;
		k) CLOBBER=1;;
		l) LINARO-BUILD=1;;
		p) UL_DIR=${UL_DIR}-$OPTARG;;
		s) SYNC=1;;
		u) CCACHE=1;;
		t) TARGETLIST=($OPTARG);;
		\?) echo "Invalid option -$OPTARG"; print_help; bail;;
		:) echo "Option -$OPTARG requires an argument."; bail;;
	esac
done

[ -e build/envsetup.sh ] || bail "You are not in the build tree"
# Set env
. build/envsetup.sh

if [ $SYNC -eq 1 ]; then
repo sync -j16 || log_fail sync repo
fi

if [ $CLOBBER -eq 1 ]; then
make clobber || log_fail clobber make
fi

# Set full upload path now
UL_PATH+="${UL_DIR}/"

# loop the TARGETLIST array and build all targets present
# if a step errors the step is logged to FAILLIST and the loop
# continues to the next item in TARGETLIST
for (( ii=0 ; ii < ${#TARGETLIST[@]} ; ii++ )) ; do

	target=${TARGETLIST[$ii]}

	    buildargs="bacon"

	echo "LUNCH: $target"
	    lunch $target || { log_fail lunch $target; continue; }

	echo "CLEANING: $target"
	    make clean || { log_fail clean $target; continue; }

	if [ $LINARO_BUILD -eq 1 ]; then
        	buildargs+=" LINARO_BUILD=true"
    	fi

	echo "BUILDING: $target with $buildargs"
	    schedtool -B -n 5 -e ionice -n 5 make -j 10 $buildargs || { log_fail mka $target; continue; }

	# time to move the zip to www
	[ $UPLOAD -eq 0 ] && continue
	zipname=`find out/target/product/$target \
		-name "$(PREFIX)_$(DEVICE)*.zip" -print0 -quit`
	#we cant upload a non existent file
	if [ -z "$zipname" ]; then
		log_fail upload_nozipfound $tart; continue
	else
		echo "UPLOADING: `basename $zipname`"
		cp $zipname ${UL_PATH} || log_fail rsync $target
	fi
done

# create log directory
[[ ! -d `dirname $REPORT_FILE` ]] && mkdir -p `dirname $REPORT_FILE`

print_failures
calc_run_time

# allow for status of build checking while away via 
# android.encounterpc.com/bmc08gt/bugless/logs
if [ -d `dirname $REPORT_FILE` ]; then
	cp `dirname $REPORT_FILE` ${UL_DIR}/logs/
fi

exit
