#!/bin/bash

# Copyright (c) 2016 Open Platform for NFV Project, Inc. and its contributors
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

set -e

echo "==================================="
echo executing $0 $@

if [ ${OVSTAG} ]; then
    export TAG=$OVSTAG
fi

export DATE=`date +%Y-%m-%d`

export BUILD_BASE=$WORKSPACE

if [ ! -d $BUILD_BASE ]
then
    mkdir -p $BUILD_BASE
fi

export PATH=$PATH:$BUILD_BASE
source $BUILD_BASE/config/config

cd $BUILD_BASE
export TOPDIR=$BUILD_BASE

# build variables

export TMP_RELEASE_DIR=$TOPDIR/release
export CACHE_DIR=$TOPDIR/cache
export TMPDIR=$TOPDIR/scratch
export RPMDIR=$TOPDIR/rpmbuild

mkdir -p $RPMDIR/RPMS
mkdir -p $RPMDIR/SOURCES
mkdir -p $RPMDIR/SPECS
mkdir -p $RPMDIR/SRPMS

if [ ! -d $TMP_RELEASE_DIR ]
then
    mkdir -p $TMP_RELEASE_DIR
fi

#
# Build ovs rpm with DPDK
#
echo =============================================
echo =======Build ovs rpm with DPDK and test in VM.
echo
$BUILD_BASE/BuildAndTestOVS.sh -d -g master -p none -t
#
# Build special version of ovs with patches --TODO
#

# Once build is done copy product to artifactory.
# and cleanup


echo "---------------------------------------"
echo "Cleanup temporary dirs"
echo
cd $BUILD_BASE

if [ -d $TMPDIR ]
then
    echo rm -rf $TMPDIR
    rm -rf $TMPDIR
fi

# copy artifacts.

if [ -d $TMP_RELEASE_DIR ]; then
    rm -rf $CACHE_RELEASE_DIR
fi

if [ -d $RPMDIR ]; then
    rm -rf $RPMDIR
fi

exit 0
