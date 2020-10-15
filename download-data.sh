#!/bin/bash

PROFILES=soc-pokec-profiles.txt.gz
RELATIONS=soc-pokec-relationships.txt.gz
TMPPROFILES=soc-pokec-profiles.txt.gz.tmp

# import: POKEC Dataset from Stanford Snap
# https://snap.stanford.edu/data/soc-pokec-readme.txt

if [ ! -f $PROFILES ]; then
  echo "Downloading PROFILES"
  wget https://snap.stanford.edu/data/soc-pokec-profiles.txt.gz -O $TMPPROFILES
# Unfortunately the file can contain trailing tab in each line. This line will remove the trailing tab
  gzip -dc $TMPPROFILES | sed -e 's/\t$//g' | gzip > $PROFILES
fi

if [ ! -f $RELATIONS ]; then
  echo "Downloading RELATIONS"
  wget https://snap.stanford.edu/data/soc-pokec-relationships.txt.gz -O $RELATIONS
fi
