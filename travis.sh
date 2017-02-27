#!/bin/bash -ev

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
    #true #comment out for now
    gradle build --full-stacktrace
else
    #true # Building for Linux is now fully implemented by "gradle build". 
    gradle build --full-stacktrace
    gradle connectedCheck --full-stacktrace
fi

./build-hostjni.sh
