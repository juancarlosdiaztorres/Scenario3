#!/bin/bash

export ONOS_APPS="drivers,openflow,netcfghostprovider,segmentrouting,fpm"
service onos start
sleep 30
/opt/onos/karaf/bin/client "app activate org.onosproject.lldpprovider"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.openflow-base"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.hostprovider"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.segmentrouting"

# /opt/onos/karaf/bin/client "app activate org.onosproject.netcfghostprovider"
# sleep 10
# /opt/onos/karaf/bin/client "app activate org.onosproject.segmentrouting"
# sleep 10
# /opt/onos/karaf/bin/client "app activate org.onosproject.fpm"
