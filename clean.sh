#/bin/bash

set -e


if [ -z ${WORKSPACE+1} ]; then
    # We are not being run by Jenkins.
    export WORKSPACE=`pwd`
fi

export BUILD_BASE=$WORKSPACE


set +e
rm -rf ovsrpm
rm -rf release
rm -rf rpmbuild
rm -rf rpms
rm -rf build
rm *.rpm
set -e
exit 0