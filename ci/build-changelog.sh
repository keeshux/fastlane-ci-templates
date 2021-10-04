#!/bin/sh
. .env
. .env.$1

RELEASE_NOTES="$APP_ROOT/fastlane/metadata/en-US/release_notes.txt"
cat $CHANGELOG_PREFACE $RELEASE_NOTES
