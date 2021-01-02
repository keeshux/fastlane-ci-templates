#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env beta,$PLATFORM,"beta.$PLATFORM",secret-codesign $PLATFORM create_archive ${@:2}
