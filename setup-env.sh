#!/bin/bash

mkdir dapp-analytics
cd dapp-analytics
git clone https://github.com/tokenguardio/dashboard-creator-client.git
cd dashboard-creator-client
git checkout dapp-analytics-dev
cd ..
git clone https://github.com/tokenguardio/dashboard-creator-server.git
cd dashboard-creator-server
git checkout dapp-analytics-dev
cd ..
git clone https://github.com/tokenguardio/db-api.git
cd db-api
git checkout dev
cd ..
cp dashboard-creator-server/GETTING_STARTED/docker-compose.yml .
cp dashboard-creator-server/GETTING_STARTED/setup.sql .

