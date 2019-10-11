#!/bin/sh
. .env
TARGET="beta" bundle exec fastlane --env secret-codesign,beta-archive $PLATFORM create_archive
