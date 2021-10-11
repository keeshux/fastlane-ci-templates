#!/bin/bash
. .env
. .env.$1

RELEASE_NOTES="$APP_ROOT/fastlane/metadata/en-US/release_notes.txt"
echo $CHANGELOG_PREFACE
cat $RELEASE_NOTES
