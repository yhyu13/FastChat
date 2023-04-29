#!/bin/bash

unset http_proxy
unset https_proxy

# Launch controller.sh in background 
./controller.sh &
controller_pid=$!

# Launch worker.sh in background
./worker.sh & 
worker_pid=$!

# Sleep for 30 seconds
sleep 30 

# Launch server.sh in foreground 
./server.sh

# Handle Ctrl+C to kill all processes 
trap 'kill $controller_pid $worker_pid; kill $!' SIGINT


# Wait for server.sh to finish 
wait 

# Kill background processes
kill $controller_pid $worker_pid