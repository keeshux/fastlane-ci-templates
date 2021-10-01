#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,beta,"beta.$PLATFORM",secret store_deploy "${@:2}"
