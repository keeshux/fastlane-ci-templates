#!/bin/sh
. .env
bundle exec fastlane --env secret-deploy $PLATFORM update_metadata
