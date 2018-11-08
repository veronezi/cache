#!/bin/bash
set -e

mvn --settings /tmp/.travis.settings.xml versions:revert
rm /tmp/.travis.settings.xml
