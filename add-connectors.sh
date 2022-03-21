#!env bash

curl -s -H 'Content-Type: application/json' -X POST -d @source-connector.json http://localhost:8083/connectors
curl -s -H 'Content-Type: application/json' -X POST -d @sink2-connector-with-transforms.json http://localhost:8083/connectors
