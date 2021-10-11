#!/bin/sh
. .env.$1
bundle exec fastlane run get_info_plist_value key:CFBundleShortVersionString path:$APP_ROOT/Info.plist 2>/dev/null | grep Result | sed -E "s/^.*Result: ([0-9\.].+).*$/\\1/"
