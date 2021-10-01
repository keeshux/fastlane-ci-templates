#!/bin/sh
. .env.$1

VERSION=`ci/version-number.sh`
BUILD=$((`ci/build-number.sh` + 1))
DATE=`date "+%Y-%m-%d"`
CHANGELOG="CHANGELOG.md"
CHANGELOG_PLATFORM="CHANGELOG.$1.md"
CHANGELOG_PREFACE="CHANGELOG.preface.md"
FASTLANE_METADATA="fastlane/metadata"
RELEASE_NOTES="$FASTLANE_METADATA/en-US/release_notes.txt"

sed "s/Unreleased/$VERSION Beta $BUILD ($DATE)/" $APP_ROOT/$CHANGELOG >$CHANGELOG.tmp
mv $CHANGELOG.tmp $APP_ROOT/$CHANGELOG
