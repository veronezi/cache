#!/bin/bash
set -e

echo "building and installing the java binaries"
mvn --settings /tmp/.travis.settings.xml install

echo "running the maven tests"
mvn --settings /tmp/.travis.settings.xml test
