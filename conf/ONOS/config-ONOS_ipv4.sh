#!/bin/bash

# Load bashrc
PS1='$ ' . ~/.bashrc

echo 'ONOS_APPS=drivers,openflow,fwd,simplefabric' >> ~/.bashrc
export ONOS_APPS=drivers,openflow,fwd,simplefabric
~/onos/tools/dev/bin/onos-setup-karaf clean
cp ~/conf/network-cfg_ipv4.json $KARAF_ROOT/../config/




