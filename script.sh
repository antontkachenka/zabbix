#!/bin/bash

ip=$(hostname -I | awk '{print $2}')

curl -i -X POST -H 'Content-Type: application/json-rpc' -d '{"jsonrpc": "2.0","method": "host.create","params":{"host": "zabbix","interfaces": [{"type": 1,"main": 1,"useip": 1,"ip": "'$ip'","dns":"","port":"10050"}],"groups":[{"groupid": "6"}],"templates": [{"templateid":"10107"}],"inventory_mode": 0,"inventory":{"macaddress_a":"01234","macaddress_b": "56768"}},"auth":"9aea086df76396720726b566f9b8be1c","id": 1}' http://192.168.100.3/api_jsonrpc.php

