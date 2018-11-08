#!/bin/bash
set -e

mvn versions:revert
rm $HOME/.m2/settings.xml



