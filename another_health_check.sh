#!/bin/bash

res=$(curl https://summer-wood-2718.fly.dev/health)
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