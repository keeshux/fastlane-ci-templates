#!/bin/sh
PLATFORM="ios"
TARGET="beta" bundle exec fastlane --env secret-codesign,beta-archive $PLATFORM create_archive
