#!/bin/sh
. .env.$1

CHANGELOG="CHANGELOG.md"
CHANGELOG_PLATFORM="CHANGELOG.$1.md"
CHANGELOG_PREFACE="CHANGELOG.preface.md"
FASTLANE_METADATA="fastlane/metadata"
RELEASE_NOTES="$FASTLANE_METADATA/en-US/release_notes.txt"

ci/latest-changelog.sh $1 | ci/strip-issues.sh >templates/$CHANGELOG.tmp
cp templates/$CHANGELOG.tmp $APP_ROOT/$RELEASE_NOTES
ci/copy-release-notes.sh $1
cat templates/$CHANGELOG_PREFACE templates/$CHANGELOG.tmp >templates/$CHANGELOG_PLATFORM
rm templates/$CHANGELOG.tmp
