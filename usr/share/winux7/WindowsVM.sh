#!/bin/bash
sudo virsh --connect qemu:///system start "win10" & sudo virt-manager --connect qemu:///system --show-domain-console "win10"
