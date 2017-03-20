{"ansible_all_ipv4_addresses": ["13.7.195.32"], "ansible_all_ipv6_addresses": ["fe80::f816:3eff:fe92:2366"], "ansible_architecture": "x86_64", "ansible_bios_date": "01/01/2011", "ansible_bios_version": "0.5.1", "ansible_cmdline": {"BOOT_IMAGE": "/boot/vmlinuz-4.4.0-31-generic", "console": "ttyS0", "ro": true, "root": "LABEL=cloudimg-rootfs"}, "ansible_date_time": {"date": "2016-08-11", "day": "11", "epoch": "1470907303", "hour": "09", "iso8601": "2016-08-11T09:21:43Z", "iso8601_basic": "20160811T092143306344", "iso8601_basic_short": "20160811T092143", "iso8601_micro": "2016-08-11T09:21:43.306418Z", "minute": "21", "month": "08", "second": "43", "time": "09:21:43", "tz": "UTC", "tz_offset": "+0000", "weekday": "Thursday", "weekday_number": "4", "weeknumber": "32", "year": "2016"}, "ansible_default_ipv4": {"address": "13.7.195.32", "alias": "ens3", "broadcast": "13.7.195.255", "gateway": "13.7.192.1", "interface": "ens3", "macaddress": "fa:16:3e:92:23:66", "mtu": 1500, "netmask": "255.255.252.0", "network": "13.7.192.0", "type": "ether"}, "ansible_default_ipv6": {}, "ansible_devices": {"sr0": {"holders": [], "host": "IDE interface: Intel Corporation 82371SB PIIX3 IDE [Natoma/Triton II]", "model": "QEMU DVD-ROM", "partitions": {}, "removable": "1", "rotational": "1", "scheduler_mode": "deadline", "sectors": "820", "sectorsize": "2048", "size": "1.60 MB", "support_discard": "0", "vendor": "QEMU"}, "vda": {"holders": [], "host": "SCSI storage controller: Red Hat, Inc Virtio block device", "model": null, "partitions": {"vda1": {"sectors": "2147481567", "sectorsize": 512, "size": "1024.00 GB", "start": "2048"}}, "removable": "0", "rotational": "1", "scheduler_mode": "", "sectors": "2147483648", "sectorsize": "512", "size": "1.00 TB", "support_discard": "0", "vendor": "0x1af4"}}, "ansible_distribution": "Ubuntu", "ansible_distribution_major_version": "16", "ansible_distribution_release": "xenial", "ansible_distribution_version": "16.04", "ansible_dns": {"nameservers": ["8.8.8.8"], "search": ["bdf.io"]}, "ansible_domain": "", "ansible_ens3": {"active": true, "device": "ens3", "ipv4": {"address": "13.7.195.32", "broadcast": "13.7.195.255", "netmask": "255.255.252.0", "network": "13.7.192.0"}, "ipv6": [{"address": "fe80::f816:3eff:fe92:2366", "prefix": "64", "scope": "link"}], "macaddress": "fa:16:3e:92:23:66", "mtu": 1500, "pciid": "virtio0", "promisc": false, "type": "ether"}, "ansible_env": {"HOME": "/root", "LANG": "en_US.UTF-8", "LC_ALL": "en_US.UTF-8", "LC_MESSAGES": "en_US.UTF-8", "LOGNAME": "root", "MAIL": "/var/mail/root", "PATH": "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin", "PWD": "/home/ubuntu", "SHELL": "/bin/bash", "SUDO_COMMAND": "/bin/sh -c echo BECOME-SUCCESS-wuvqzlomtcugnziisbenfpgkslwuscwf; /bin/sh -c 'LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 LC_MESSAGES=en_US.UTF-8 /usr/bin/python /home/ubuntu/.ansible/tmp/ansible-tmp-1470907302.39-54721967889811/setup; rm -rf \"/home/ubuntu/.ansible/tmp/ansible-tmp-1470907302.39-54721967889811/\" > /dev/null 2>&1'", "SUDO_GID": "1000", "SUDO_UID": "1000", "SUDO_USER": "ubuntu", "TERM": "xterm-256color", "USER": "root", "USERNAME": "root"}, "ansible_fips": false, "ansible_form_factor": "Other", "ansible_fqdn": "storage02", "ansible_hostname": "storage02", "ansible_interfaces": ["lo", "ens3"], "ansible_kernel": "4.4.0-31-generic", "ansible_lo": {"active": true, "device": "lo", "ipv4": {"address": "127.0.0.1", "broadcast": "host", "netmask": "255.0.0.0", "network": "127.0.0.0"}, "ipv6": [{"address": "::1", "prefix": "128", "scope": "host"}], "mtu": 65536, "promisc": false, "type": "loopback"}, "ansible_lsb": {"codename": "xenial", "description": "Ubuntu 16.04.1 LTS", "id": "Ubuntu", "major_release": "16", "release": "16.04"}, "ansible_lvm": {"lvs": {}, "vgs": {}}, "ansible_machine": "x86_64", "ansible_machine_id": "e37e0de2b98b4cc4ad2113079208f4cb", "ansible_memfree_mb": 3541, "ansible_memory_mb": {"nocache": {"free": 3855, "used": 96}, "real": {"free": 3541, "total": 3951, "used": 410}, "swap": {"cached": 0, "free": 0, "total": 0, "used": 0}}, "ansible_memtotal_mb": 3951, "ansible_mounts": [{"device": "/dev/vda1", "fstype": "ext4", "mount": "/", "options": "rw,relatime,data=ordered", "size_available": 1064834535424, "size_total": 1065816850432, "uuid": "73e92991-4049-426c-8a97-ea641be3c74b"}], "ansible_nodename": "storage02", "ansible_os_family": "Debian", "ansible_pkg_mgr": "apt", "ansible_processor": ["GenuineIntel", "Intel Xeon E312xx (Sandy Bridge)", "GenuineIntel", "Intel Xeon E312xx (Sandy Bridge)", "GenuineIntel", "Intel Xeon E312xx (Sandy Bridge)", "GenuineIntel", "Intel Xeon E312xx (Sandy Bridge)"], "ansible_processor_cores": 1, "ansible_processor_count": 4, "ansible_processor_threads_per_core": 1, "ansible_processor_vcpus": 4, "ansible_product_name": "OpenStack Nova", "ansible_product_serial": "de616ec8-16b4-44f3-b9dd-e52f2322c9b6", "ansible_product_uuid": "E37E0DE2-B98B-4CC4-AD21-13079208F4CB", "ansible_product_version": "2015.1.0-3.el7", "ansible_python_version": "2.7.12", "ansible_selinux": false, "ansible_service_mgr": "systemd", "ansible_ssh_host_key_dsa_public": "AAAAB3NzaC1kc3MAAACBAIXKK3eoL3qFc8gNNNnWnlDcB0Wt6cXtDWwdZoTASif+QPap1b3UEYGW1SgsKbXBonazKJiBha+0P3Ezm3FkqaQOGFjXyIPFGornia6BlRfXLftsGhFfMLSUth2Z8FERqz/QW6xNENY4NlcqyJ+PSuSkDjD9fcuhC057cH181p6XAAAAFQC5XDWbiWy5p7zYgMaFcWh/12pRGQAAAIBAzQbAhexyDD06a8KJwP+rQZD3o5LTm0S5mbYK9gWjUxAnmX80a0aCpYigPuCs5/loaXIQPKGZv2OXcLgwi7egSJizU9WY/o4WODJp0pIlnMFcokdNvci+LCBrhUX0BeqXwPp8IDiLbAZiql1BsQ/6plv5LlagcW5tXsWIW+HJzgAAAIBlBFXH6LxJnsoj/0DZN2SDe4gf6gwxA421jChx81PiEp0UmMIgbEDrZs+TFJ+vjaHdaWvxuwzoEeD7o4iw40OkLLGtU69Ivfs2Q+fHQ/Evrk2bMuWLrM3DfYxS5qG4dbzcfj/t3D+yB12Xb+he7dunVy2U4UDQehVDI7sTdO94Qw==", "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJJx/pBrKH5kCVWVrGZqp/j8wA4M5l6Sbos+1vnVfUeNBkG8wsWU7YJGD6VOsD5BhNTSQB6ZDrIX3vjvJwTWE5E=", "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIMaWqHtJMrQRXLShd+6j2ldzW7Fh7lGs11Bloc8QOr7G", "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABAQC1ufAYmQ6zjpAJdZh+fxi0A+RAvmUTNBBU3+uW3vybPij5VHayQdEeQi9Mgx9GI0NE5keMh1z+0rLEpUDV/3/7MLtLSEIBhUSTIzN1OO8ZQZOjxyS/eEq3KUXWQKHdI8u0GPl4pmozXAyuYo4nu5b2QUZzQ9aKdAPTIKXyhku4V8laVCGGwHLrCj9p4QPP0el0OpNq9qwNnK/Qn6518iPNKEc4eBWNzzPFbz0Y4zlX6TvZCghhFcsbmdETcuyPctNZlLNZke0ocQHl/DRY81Q4Tm0zcl6YjerAjkJvkOCHl5WNjlhAhffTEnwfnJwRIjDxWFBMmJp4lVee2xWfSLfj", "ansible_swapfree_mb": 0, "ansible_swaptotal_mb": 0, "ansible_system": "Linux", "ansible_system_vendor": "Fedora Project", "ansible_uptime_seconds": 1605, "ansible_user_dir": "/root", "ansible_user_gecos": "root", "ansible_user_gid": 0, "ansible_user_id": "root", "ansible_user_shell": "/bin/bash", "ansible_user_uid": 0, "ansible_userspace_architecture": "x86_64", "ansible_userspace_bits": "64", "ansible_virtualization_role": "NA", "ansible_virtualization_type": "NA", "module_setup": true}