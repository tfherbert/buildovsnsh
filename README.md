Build ovs/dpdk RPM with NSH patches
===================================

These scripts build OVS with DPDK RPM and applies NSH patches.

Versions of components used to build each version of this RPM
-------------------------------------------------------------


Version 1
---------

```
DPDK 2.2.0 commit a38e5ec15e3fe615b94f3cc5edca5974dab325ab git://dpdk.org/dpdk
COPR DPDK commit 78716ea70aedf802322c0dda47c584ef5f6c9168 http://copr-dist-git.fedorainfracloud.org/cgit/pmatilai/dpdk-snapshot/dpdk.git
Open vSwitch 2.5.90 commit c4623bb839bb7a182f45f4619a51b65a62f675e7 https://github.com/openvswitch/ovs.git
COPR OVS commit 74d7cd8c3592a147306942e0ed423538bc08d4eb http://copr-dist-git.fedorainfracloud.org/cgit/pmatilai/dpdk-snapshot/openvswitch.git
NSH Patches: commit 98e1d3d6b1ed49d902edaede11820853b0ad5037 https://github.com/yyang13/ovs_nsh_patches.git
```

Build RPMs
----------
```
$ ./buildovsns.sh
```
Clean
----------
```
$ ./clean.sh
```

Install Prerequisites
---------------------
Requires SUDO
```
$ ./prepare.sh
```

RPMs will be placed in release directory.

Configuration
-------------
Configuration is in config/config

List of RPMs
---------
dpdk-2.2.0-1.fc23.x86_64.rpm
dpdk-debuginfo-2.2.0-1.fc23.x86_64.rpm
dpdk-devel-2.2.0-1.fc23.x86_64.rpm
dpdk-examples-2.2.0-1.fc23.x86_64.rpm
dpdk-tools-2.2.0-1.fc23.x86_64.rpm
openvswitch-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
openvswitch-debuginfo-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
openvswitch-devel-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
openvswitch-ovn-central-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
openvswitch-ovn-common-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
openvswitch-ovn-docker-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
openvswitch-ovn-host-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
openvswitch-ovn-vtep-2.5.90-0.11974.gitc4623bb8.1.fc23.x86_64.rpm
