#!/bin/sh
. .env
bundle exec fastlane --env secret-codesign,secret-deploy $PLATFORM update_provisioning type:$1 readonly:false
