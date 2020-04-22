#!/bin/sh
VERSION=`ci/version-number.sh`
BUILD=$((`ci/build-number.sh` + 1))
DATE=`date "+%Y-%m-%d"`
CHANGELOG="CHANGELOG.md"
CHANGELOG_PREFACE="CHANGELOG.preface.md"
FASTLANE_METADATA="fastlane/metadata"
RELEASE_NOTES="$FASTLANE_METADATA/en-US/release_notes.txt"

sed "s/Unreleased/$VERSION Beta $BUILD ($DATE)/" $CHANGELOG >$CHANGELOG.tmp
mv $CHANGELOG.tmp $CHANGELOG
ci/latest-changelog.sh | ci/strip-issues.sh >templates/$CHANGELOG.tmp
cp templates/$CHANGELOG.tmp $RELEASE_NOTES
ci/copy-release-notes.sh
cat templates/$CHANGELOG_PREFACE templates/$CHANGELOG.tmp >templates/$CHANGELOG
rm templates/$CHANGELOG.tmp

git add $CHANGELOG $FASTLANE_METADATA
git commit -m "Set beta release"
