#!env bash

docker exec -it broker /bin/kafka-console-consumer --bootstrap-server host.docker.internal:8083  --whitelist .\*public.\*
