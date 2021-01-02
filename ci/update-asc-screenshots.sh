#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,secret-deploy $PLATFORM update_screenshots
