#!/bin/bash
set -e

echo "building and installing the java binaries"
mvn install

echo "running the maven tests"
mvn test
