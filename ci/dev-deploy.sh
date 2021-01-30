#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,dev,"dev.$PLATFORM",secret-deploy $PLATFORM dev_deploy "${@:2}"
