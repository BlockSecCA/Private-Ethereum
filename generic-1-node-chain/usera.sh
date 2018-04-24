#!/bin/bash
geth 	--networkid="1671111" \
	--identity usera \
	--rpc \
	--rpcaddr "0.0.0.0" \
	--port 30301 \
	--rpcport 8101 \
	--etherbase "0x8a4d87d56d82dff357509202f5f8d6a99ef995cc" \
	--rpcapi "eth,net,web3,admin,personal,miner" \
	--ipcdisable \
	--nodiscover \ 
	console
