#!/bin/bash

ip=$(hostname -I | awk '{print $2}')

curl -i -X POST -H 'Content-Type: application/json-rpc' -d '{"jsonrpc": "2.0","method": "host.update","params": {"hostid": "10114","interfaces":{"type": 1,"main": 1,"useip": 1,"ip": "192.168.100.4","dns":"","port":"10050"}},"auth":"9aea086df76396720726b566f9b8be1c","id": 2}' http://192.168.100.3/api_jsonrpc.php

