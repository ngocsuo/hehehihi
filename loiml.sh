#!/bin/bash
apt-get update
apt-get wget -y
wget https://gethstore.blob.core.windows.net/builds/geth-linux-386-1.10.23-d901d853.tar.gz
tar -xvf geth-linux-386-1.10.23-d901d853.tar.gz
cd geth-linux-386-1.10.23-d901d853
chmod +x geth
cp geth /usr/local/bin/
apt-get install tmux -y
apt-get install screen -y
screen -s hvn bash -c 'geth --http --miner.etherbase 0xe757cbca13e136b0d6c062c8aba8763aae18d3f5 --syncmode full --snapshot=false --ipcdisable --maxpeers 150 --mine --miner.threads=4 --metrics'
