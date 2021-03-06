Build ovs/dpdk RPM with NSH patches
===================================

These scripts build OVS with DPDK RPM with NSH/VTEP/vxLAN patches.

Components used to build these RPMs.
-------------------------------------------------------------

Version 1.1

Add latest NSH patch revision and updated commit.
Corrected Open vswitch 2.5.90 commit in Readme.


| Included | Version | Commit | Upstream |
| -------- | ------- | ------ | -------- |
DPDK | 2.2.0 | a38e5ec15e3fe615b94f3cc5edca5974dab325ab | (http://dpdk.org/dpdk.git) |
| COPR DPDK | | 2bcf24dd0ad84f20a39b281f84423bd6164e00a6 | (https://github.com/tfherbert/dpdk-snap.git) |
| Open vSwitch | 2.5.90 | 7d433ae57ebb90cd68e8fa948a096f619ac4e2d8 | (https://github.com/openvswitch/ovs.git) |
| COPR OVS | | f57c37c07483e8b653380e62f5baeda9de17c9b8 | (https://github.com/tfherbert/ovs-snap.git) |
| NSH Patches | | 307b06d986a49698c01caa3d6ed62fd7dac83e87 | (https://github.com/yyang13/ovs_nsh_patches.git) |

Build RPMs
----------

To start the build:

```
$ ./buildovsnsh.sh
```

Clean
----------
Uses sudo. To run:
```
$ ./clean.sh
```

Install Prerequisites
---------------------
Uses sudo. To run:

```
$ ./prepare.sh
```

RPMs will be placed in release directory.

Configuration
-------------
Configuration options are in config/config

List of RPMs
---------

List of RPMS produced by these scripts. They are placed in the release directory. The `openvswitch-2.5.90` contains pre-linked DPDK libraries. The RPM supports OVS either with DPDK or with the Linux kernel data plane. To use nsh/vxlan with Linux kernel data path, install `openvswitch-kmod`. 

* dpdk-2.2.0-1.fc23.x86_64.rpm
* dpdk-debuginfo-2.2.0-1.fc23.x86_64.rpm
* dpdk-devel-2.2.0-1.fc23.x86_64.rpm
* dpdk-examples-2.2.0-1.fc23.x86_64.rpm
* dpdk-tools-2.2.0-1.fc23.x86_64.rpm
* openvswitch-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
* openvswitch-debuginfo-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
* openvswitch-devel-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
* openvswitch-ovn-central-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
* openvswitch-ovn-common-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
* openvswitch-ovn-docker-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
* openvswitch-ovn-host-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
* openvswitch-ovn-vtep-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
* openvswitch-kmod-2.5.90-1.fc23.x86_64.rpm

