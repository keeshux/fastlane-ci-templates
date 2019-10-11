#!/bin/sh
. .env
TARGET="dev" bundle exec fastlane --env secret-codesign,dev-archive $PLATFORM create_archive
