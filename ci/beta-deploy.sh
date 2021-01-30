#!/bin/sh
PLATFORM=$1
bundle exec fastlane --env $PLATFORM,beta,"beta.$PLATFORM",secret-deploy $PLATFORM beta_deploy "${@:2}"
