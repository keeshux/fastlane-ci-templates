#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,dev,"dev.$PLATFORM",secret-codesign prepare_archive "${@:2}"
