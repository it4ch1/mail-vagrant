#!/bin/bash
set -eux

config_domain=$(hostname --domain)
config_ip_address=$(hostname -I | awk '{print $2}')

apt-get install -y --no-install-recommends dnsutils


# configure the system resolver to use the Hacking Square DNS.
echo 'nameserver 192.168.100.250' >/etc/resolv.conf
echo 'dns-nameservers 192.168.100.250' >>/etc/network/interfaces

