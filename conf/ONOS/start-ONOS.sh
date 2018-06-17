#!/bin/bash

export ONOS_APPS="drivers,openflow,segmentrouting"
service onos start
sleep 30
/opt/onos/karaf/bin/client "app activate org.onosproject.drivers"
sleep 30
/opt/onos/karaf/bin/client "app activate org.onosproject.openflow"
sleep 30
/opt/onos/karaf/bin/client "app activate org.onosproject.segmentrouting"

# /opt/onos/karaf/bin/client "app activate org.onosproject.netcfghostprovider"
# sleep 10
# /opt/onos/karaf/bin/client "app activate org.onosproject.segmentrouting"
# sleep 10
# /opt/onos/karaf/bin/client "app activate org.onosproject.fpm"
