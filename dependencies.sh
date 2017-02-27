#!/bin/bash -ev

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
    ./dependencies-mac.sh
else
    ./dependencies-linux.sh    
    ./android-emulator.sh
fi

./libsodium-update.sh
