#!/bin/bash
set -e

cp .travis.settings.xml /tmp/.travis.settings.xml
sed -i 's/my_password/'"$BINTRAY_PASSWORD"'/g' /tmp/.travis.settings.xml

mvn --settings /tmp/.travis.settings.xml clean -q
mvn --settings /tmp/.travis.settings.xml -q versions:set -DnewVersion=$MY_VERSION-b$TRAVIS_BUILD_NUMBER
git diff
