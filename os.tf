# Create a Virtual Machine

# One can provide the Digital Ocean access token via numerous methods
# including passing a variable (from another file, a file passed from the CLI)
# or as an environment variable: export OS_USERNAME='xxxx'


# parc image ids:
# 16-04-1 fcbf1191-85ea-4560-8b19-d6e0833bf5ee
# 14-04-4 2f22f5de-9872-4da4-ad8c-94ee78e06b17
# centos-7-2 45545fe1-94d5-4138-bb25-707dc25b3229

# parc flavor ids:
# k2.s2 22 4G 120G 4c
# k2.m2 24 8G 360G 8c
# k2.l2 26 16G 720G 16c
#
# k2.ds2 23 4G 1024G 4c
# k2.dm2 25 8G 2048G 4c

# parc keypairs:
# rhs

# parc networks:
# external Ext-Net-498 13.7.192.0/22
#     d628b0dc-9d0d-4765-b4ec-3806b81cb6e7
# private private 192.168.100.0/24
#     3dcf77a3-3af3-4a59-93cc-d37105a45938

#  Provision via external ansible, but create the inventory
resource "openstack_compute_instance_v2" "kolla" {
  name = "kolla"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "24"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
    fixed_ip_v4 = "13.7.195.0"
  }
}

resource "openstack_compute_instance_v2" "control01" {
  name = "control01"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "22"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
  }
}
resource "openstack_compute_instance_v2" "control02" {
  name = "control02"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "22"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
  }
}
resource "openstack_compute_instance_v2" "control03" {
  name = "control03"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "22"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
  }
}

resource "openstack_compute_instance_v2" "compute01" {
  name = "compute01"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "22"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
  }
}
resource "openstack_compute_instance_v2" "compute02" {
  name = "compute02"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "22"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
  }
}
resource "openstack_compute_instance_v2" "compute03" {
  name = "compute03"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "22"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
  }
}

resource "openstack_compute_instance_v2" "storage01" {
  name = "storage01"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "23"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
  }
}
resource "openstack_compute_instance_v2" "storage02" {
  name = "storage02"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "23"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
  }
}
resource "openstack_compute_instance_v2" "storage03" {
  name = "storage03"
  image_id = "fcbf1191-85ea-4560-8b19-d6e0833bf5ee"
  flavor_id = "23"
  key_pair = "rhs"
  security_groups = ["default"]

  network {
    name = "Ext-Net-498"
  }
}


# If you don't already have a domain defined in Digital Ocean

#resource "digitalocean_domain" "opsits-com" {
#    name = "opsits.com"
#}

# Add a pointer to the new IP address
# Note that the default TTYL is 1800 seconds, so it will take
# up to 30 minutes in this enviornment for the record to time out.

resource "digitalocean_record" "kolla" {
    domain = "opsits.com"
    type = "A"
    name = "kolla"
    value = "${openstack_compute_instance_v2.kolla.access_ip_v4}"
}

resource "digitalocean_record" "control01" {
    domain = "opsits.com"
    type = "A"
    name = "control01"
    value = "${openstack_compute_instance_v2.control01.access_ip_v4}"
}
resource "digitalocean_record" "control02" {
    domain = "opsits.com"
    type = "A"
    name = "control02"
    value = "${openstack_compute_instance_v2.control02.access_ip_v4}"
}
resource "digitalocean_record" "control03" {
    domain = "opsits.com"
    type = "A"
    name = "control03"
    value = "${openstack_compute_instance_v2.control03.access_ip_v4}"
}
resource "digitalocean_record" "compute01" {
    domain = "opsits.com"
    type = "A"
    name = "compute01"
    value = "${openstack_compute_instance_v2.compute01.access_ip_v4}"
}
resource "digitalocean_record" "compute02" {
    domain = "opsits.com"
    type = "A"
    name = "compute02"
    value = "${openstack_compute_instance_v2.compute02.access_ip_v4}"
}
resource "digitalocean_record" "compute03" {
    domain = "opsits.com"
    type = "A"
    name = "compute03"
    value = "${openstack_compute_instance_v2.compute03.access_ip_v4}"
}
resource "digitalocean_record" "storage01" {
    domain = "opsits.com"
    type = "A"
    name = "storage01"
    value = "${openstack_compute_instance_v2.storage01.access_ip_v4}"
}
resource "digitalocean_record" "storage02" {
    domain = "opsits.com"
    type = "A"
    name = "storage02"
    value = "${openstack_compute_instance_v2.storage02.access_ip_v4}"
}
resource "digitalocean_record" "storage03" {
    domain = "opsits.com"
    type = "A"
    name = "storage03"
    value = "${openstack_compute_instance_v2.storage03.access_ip_v4}"
}
