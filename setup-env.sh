#!/bin/bash
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

