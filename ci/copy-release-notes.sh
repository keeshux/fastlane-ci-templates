#!/bin/bash
. .env.$1

METADATA="release_notes"
RX='^[a-z]{2}(\-[A-z]+)?$'
cd "$FASTLANE_ROOT/fastlane/metadata"
for LANG in `ls -d *`; do
    if [[ $LANG == "en-US" ]]; then
        continue
    fi
    if [[ ! $LANG =~ $RX ]]; then
        continue
    fi
    #echo $LANG
    cp en-US/$METADATA.txt $LANG
done
