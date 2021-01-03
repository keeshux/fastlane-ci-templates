#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env dev,$PLATFORM,"dev.$PLATFORM",secret-codesign prepare_archive "${@:2}"
