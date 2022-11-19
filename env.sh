
# --home
export AKASH_HOME="$PWD/data"

# --keyring-backend
export AKASH_KEYRING_BACKEND=test

# --gas-adjustment
export AKASH_GAS_ADJUSTMENT=2

# --gas auto
export AKASH_GAS=auto

# --gas-prices
export AKASH_GAS_PRICES="0.025uakt" 

# --chain-id
export AKASH_CHAIN_ID=akashnet-2

# --yes
export AKASH_YES=true

# --from
export AKASH_FROM=deploy

# use mainnet
export AKASH_NET_BASE=https://raw.githubusercontent.com/ovrclk/net/master
export AKASH_NET="$AKASH_NET_BASE/mainnet"

# --chain-id
# export AKASH_CHAIN_ID="$(curl -s "$AKASH_NET/chain-id.txt")"

# --node
#export AKASH_NODE=https://rpc.prod.ewr1.akash.farm:443/token/PHAH3PAI/
export AKASH_NODE=http://akash.c29r3.xyz:80/rpc

akash(){
  ./bin/provider-services "$@"
}
