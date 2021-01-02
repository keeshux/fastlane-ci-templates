#!/bin/sh
PLATFORM=$1
VERSION=`agvtool mvers -terse1`
BUILD=`agvtool vers -terse`
bundle exec fastlane --env beta,$PLATFORM,"beta.$PLATFORM",secret-deploy $PLATFORM beta_deploy "${@:2}" && git tag "v$VERSION-b$BUILD"
