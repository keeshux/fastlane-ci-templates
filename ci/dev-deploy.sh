#!/bin/sh
. .env
VERSION=`agvtool mvers -terse1`
BUILD=`agvtool vers -terse`
TARGET="dev" bundle exec fastlane --env secret-deploy,dev-deploy $PLATFORM dev_deploy $@ && git tag "v$VERSION-a$BUILD"
