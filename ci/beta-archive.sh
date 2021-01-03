#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,beta,"beta.$PLATFORM",secret-codesign $PLATFORM create_archive ${@:2}
