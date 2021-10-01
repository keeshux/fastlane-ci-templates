#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,dev,"dev.$PLATFORM",secret $PLATFORM dev_deploy "${@:2}"
