#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,dev,"dev.$PLATFORM",secret $PLATFORM create_archive "${@:2}"
