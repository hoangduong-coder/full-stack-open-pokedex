#!/bin/bash

res=$(curl localhost:5000/health)
echo $res

if [[ $res -eq 'ok' ]]
then
    echo "Healthy"
    exit 0
else
    echo "Unhealthy"
    exit 1
fi

exit 1