#!/bin/bash

HOST=localhost
PORT=5000
DATA=$(cat "input_example.json")
MODEL="{{ .app.name }}"

echo -e "To connect: kubectl port-forward -n serve-model-$MODEL svc/$MODEL-service 5000:5000 2>&1 >/dev/null &"

curl -X POST -H "Content-Type:application/json" -s --data "{\"dataframe_split\": $DATA}" http://$HOST:$PORT/invocations