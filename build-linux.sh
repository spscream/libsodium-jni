#!/bin/bash -ev

./dependencies-linux.sh
./build.sh

./build-hostjni.sh

gradle build --full-stacktrace
