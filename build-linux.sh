#!/bin/bash -ev

./dependencies-linux.sh
./build.sh

./build-kaliumjni.sh

gradle build --full-stacktrace
