Build ovs/dpdk RPM with NSH patches
===================================

These scripts build OVS with DPDK RPM with NSH/VTEP/vxLAN patches.

Components used to build these RPM.
-------------------------------------------------------------

Version 1.0


| Included | Version | Commit | Upstream |
| -------- | ------- | ------ | -------- |
DPDK | 2.2.0 | a38e5ec15e3fe615b94f3cc5edca5974dab325ab | (http://dpdk.org/dpdk.git) |
| COPR DPDK | | 78716ea70aedf802322c0dda47c584ef5f6c9168 | (http://copr-dist-git.fedorainfracloud.org/cgit/pmatilai/dpdk-snapshot/dpdk.git) |
| Open vSwitch | 2.5.90 | c4623bb839bb7a182f45f4619a51b65a62f675e7 | (https://github.com/openvswitch/ovs.git) |
| COPR OVS | | 74d7cd8c3592a147306942e0ed423538bc08d4eb | (http://copr-dist-git.fedorainfracloud.org/cgit/pmatilai/dpdk-snapshot/openvswitch.git) |
| NSH Patches | | 98e1d3d6b1ed49d902edaede11820853b0ad5037 | (https://github.com/yyang13/ovs_nsh_patches.git) |

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

