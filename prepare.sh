#/bin/bash

# Copyright (c) 2016 Red Hat Inc.
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

echo "==============================="
echo "Requires sudo privileges"
echo executing $0 $@
echo executing on machine `uname -a`

function install_pre_reqs() {
    echo "----------------------------------------"
    echo Install pre-reqs.
    echo
    set +e
    sudo yum -y install gcc make python-devel openssl-devel kernel-devel \
                graphviz kernel-debug-devel autoconf automake \
                rpm-build redhat-rpm-config libtool python-twisted-core \
                desktop-file-utils groff PyQt4
}

install_pre_reqs
exit 0
