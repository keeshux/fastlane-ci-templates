#!/bin/bash
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,secret update_metadata
