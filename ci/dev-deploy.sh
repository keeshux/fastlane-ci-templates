#!/bin/sh
PLATFORM=$1
VERSION=`agvtool mvers -terse1`
BUILD=`agvtool vers -terse`
bundle exec fastlane --env dev,$PLATFORM,"dev.$PLATFORM",secret-deploy $PLATFORM dev_deploy "${@:2}" && git tag "v$VERSION-a$BUILD"
