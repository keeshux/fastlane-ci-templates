#!/bin/sh
PLATFORM="ios"
VERSION=`agvtool mvers -terse1`
BUILD=`agvtool vers -terse`
TARGET="beta" bundle exec fastlane --env secret-deploy,beta-deploy $PLATFORM beta_deploy && git tag "v$VERSION-b$BUILD"
