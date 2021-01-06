#!/bin/sh
. .env.$1

VERSION=`ci/version-number.sh`
BUILD=$((`ci/build-number.sh` + 1))
DATE=`date "+%Y-%m-%d"`
CHANGELOG="CHANGELOG.md"
CHANGELOG_PREFACE="CHANGELOG.preface.md"
FASTLANE_METADATA="fastlane/metadata"
RELEASE_NOTES="$FASTLANE_METADATA/en-US/release_notes.txt"

sed "s/Unreleased/$VERSION Beta $BUILD ($DATE)/" $APP_ROOT/$CHANGELOG >$APP_ROOT/$CHANGELOG.tmp
mv $APP_ROOT/$CHANGELOG.tmp $APP_ROOT/$CHANGELOG
ci/latest-changelog.sh $1 | ci/strip-issues.sh >templates/$CHANGELOG.tmp
cp templates/$CHANGELOG.tmp $APP_ROOT/$RELEASE_NOTES
ci/copy-release-notes.sh $1
cat templates/$CHANGELOG_PREFACE templates/$CHANGELOG.tmp >templates/$CHANGELOG
rm templates/$CHANGELOG.tmp
