#!/bin/bash
if !(git checkout master && git push && git push github); then
    echo "Error while pushing master"
    exit
fi
if !(git push --tags && git push --tags github); then
    echo "Error while pushing tags"
    exit
fi
if !(git checkout stable && git merge master && git push github); then
    echo "Error while pushing stable"
    exit
fi
git checkout master
