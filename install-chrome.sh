#! /bin/bash
# https://github.com/scheib/chromium-latest-linux

cd $(dirname $0)

# LASTCHANGE_URL="https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Linux_x64%2FLAST_CHANGE?alt=media"
#
# REVISION=$(curl -s -S $LASTCHANGE_URL)
#
# echo "latest revision is $REVISION"
#
# if [ -d $REVISION ] ; then
#   echo "already have latest version"
#   exit
# fi

# Last revision (for reference)
# REVISION=587811
# REVISION=599034
# REVISION=638880
# REVISION=665006
# REVISION=686378
REVISION=756066

ZIP_URL="https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Linux_x64%2F$REVISION%2Fchrome-linux.zip?alt=media"

ZIP_FILE="${REVISION}-chrome-linux.zip"

echo "Fetching $ZIP_URL"

rm -rf $REVISION
mkdir $REVISION
pushd $REVISION
curl -# $ZIP_URL > $ZIP_FILE
echo "Unzipping.."
unzip $ZIP_FILE
rm $ZIP_FILE
popd
rm -f ./latest
ln -s $REVISION/chrome-linux/ ./latest
