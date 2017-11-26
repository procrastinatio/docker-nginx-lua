#!/usr/bin/env bash




curl -X POST -e 'https://zorba.ch' localhost:9000/print  --data @spec.json

curl -X POST -e 'https://zorba.ch' localhost:9000/print  --data @spec2.json
