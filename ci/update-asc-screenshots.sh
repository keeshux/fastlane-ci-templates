#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,secret-deploy update_screenshots
