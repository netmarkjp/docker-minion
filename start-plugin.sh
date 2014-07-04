#!/bin/bash

cd /opt/minion/minion-backend
source /opt/minion/b/bin/activate && /opt/minion/minion-backend/scripts/minion-plugin-worker

trap "kill $!; exit" SIGHUP SIGINT SIGTERM SIGKILL

while true; do
    sleep 1
done
