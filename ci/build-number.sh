#!/bin/sh
. .env.$1
BASE_NUMBER=`bundle exec fastlane run get_info_plist_value key:CFBundleVersion path:$APP_ROOT/Info.plist 2>/dev/null | grep Result | sed -E "s/^.*Result: ([0-9]+).*$/\\1/"`
COMMITS_COUNT=`git rev-list --count HEAD`
echo $((BASE_NUMBER + COMMITS_COUNT))
