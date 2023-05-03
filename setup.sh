#!/bin/bash

echo "ps"
ps -auxf

echo "kernel version"
uname -a

echo "virtualization"
grep vmx /proc/cpuinfo

echo "install vagrant"
apt-get -y update && apt-get -y install vagrant qemu-kvm virt-manager libvirt-daemon-system virtinst libvirt-clients bridge-utils

echo "start libvirt"
systemctl start libvirt
