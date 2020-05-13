#!/bin/sh
bundle exec fastlane --env secret-codesign,secret-deploy update_provisioning type:$1 readonly:false
