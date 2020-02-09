#!/bin/bash

echo "Copying active_configuration.json to Sync Gateway directory"
sudo cp ./active_configuration.json /home/sync_gateway/sync_gateway.json
echo "Restarting Sync Gateway service"
sudo systemctl restart sync_gateway
