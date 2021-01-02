#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env dev,$PLATFORM,"dev.$PLATFORM",secret-codesign $PLATFORM create_archive "${@:2}"
