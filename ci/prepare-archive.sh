#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,dev,"dev.$PLATFORM",secret prepare_archive "${@:2}"
