#!/bin/bash
geth 	--networkid="1671111" \
	--identity userb \
	--rpc \
	--rpcaddr "0.0.0.0" \
	--port 30302 \
	--rpcport 8102 \
	--etherbase "0xf59757f68f4ba5f633b06b0caeda4c2d6aeb1cc2" \
	--rpcapi "eth,net,web3,admin,personal,miner" \
	--ipcdisable \
	--nodiscover \
	console
