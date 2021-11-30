#!/bin/bash
. .env.$1

FASTLANE_METADATA="fastlane/metadata"
RELEASE_NOTES="$FASTLANE_METADATA/en-US/release_notes.txt"
STRIPPED_ISSUES_SUB="s/^(.*)\. \[.*$/\1./"

ci/latest-changelog.sh $1 | sed -E "$STRIPPED_ISSUES_SUB" >$APP_ROOT/$RELEASE_NOTES
