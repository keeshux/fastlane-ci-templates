#!/bin/sh
PLATFORM=$1
CERT_TYPE=$2
bundle exec fastlane --env $PLATFORM,secret-codesign,secret-deploy update_provisioning type:$CERT_TYPE readonly:false
