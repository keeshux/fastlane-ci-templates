#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,beta,"beta.$PLATFORM",secret $PLATFORM create_archive ${@:2}
