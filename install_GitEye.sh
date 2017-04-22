#!/bin/sh

URL=https://downloads-guests.open.collab.net/files/documents/61/13437/GitEye-2.0.0-linux.x86_64.zip

#
# https://www.open.collab.net/nonav/downloads/giteye/thankyou.html?_=d
# To get the URL start downloading with a browser and then check the
# Document in the browser. There the url is (but only after download has started)

mkdir ~/Software
cd ~/Software
mkdir GitEye
cd GitEye

wget $URL
unzip GitEye*.zip
rm -f GitEye*.zip
