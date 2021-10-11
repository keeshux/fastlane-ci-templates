#!/bin/sh
bundle exec fastlane --env $1 get_commits_build_number 2>/dev/null | grep "Build: " | sed -E "s/^.*Build: (.*)$/\1/g"
