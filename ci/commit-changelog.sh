#!/bin/sh
VERSION=`ci/version-number.sh`
BUILD=$((`ci/build-number.sh` + 1))
DATE=`date "+%Y-%m-%d"`
CHANGELOG="CHANGELOG.md"
CHANGELOG_PREFACE="CHANGELOG.preface.md"
RELEASE_NOTES="fastlane/metadata/en-US/release_notes.txt"

sed "s/Unreleased/$VERSION Beta $BUILD ($DATE)/" $CHANGELOG >$CHANGELOG.tmp
mv $CHANGELOG.tmp $CHANGELOG
ci/latest-changelog.sh | ci/strip-issues.sh >templates/$CHANGELOG.tmp
cp templates/$CHANGELOG.tmp $RELEASE_NOTES
cat templates/$CHANGELOG_PREFACE templates/$CHANGELOG.tmp >templates/$CHANGELOG
rm templates/$CHANGELOG.tmp
git add $CHANGELOG $RELEASE_NOTES
git commit -m "Set beta release"
