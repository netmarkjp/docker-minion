#!/bin/bash

cd /opt/minion/minion-frontend
source /opt/minion/f/bin/activate && /opt/minion/minion-frontend/scripts/minion-frontend runserver -d -a 0.0.0.0

trap "kill $!; exit" SIGHUP SIGINT SIGTERM SIGKILL

while true; do
    sleep 1
done
