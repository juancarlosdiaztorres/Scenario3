
Para cargar una nueva configuracion, desde ONOS:

curl --user onos:rocks -X POST -H "Content-Type: application/json" http://localhost:8181/onos/v1/network/configuration/ -d @/opt/onos/config/network-cfg.json
