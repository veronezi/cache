#!/bin/bash
set -e

mvn --settings /tmp/.travis.settings.xml versions:revert
rm $HOME/.m2/settings.xml



