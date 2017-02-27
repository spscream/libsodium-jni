#!/bin/bash -ev

./dependencies-mac.sh 

./build.sh

./build-hostjni.sh

gradle build --full-stacktrace
