export AKASH_NET_BASE=https://raw.githubusercontent.com/ovrclk/net/master
export AKASH_NET="$AKASH_NET_BASE/mainnet"
export AKASH_CHAIN_ID="$(curl -s "$AKASH_NET/chain-id.txt")"
# export AKASH_CHAIN_ID=edunet2

export AKASH_GAS_ADJUSTMENT=2
export AKASH_HOME=data
export AKASH_KEYRING_BACKEND=test
export AKASH_GAS_PRICES="0.025uakt" 
export AKASH_FROM=deploy
# export AKASH_NODE=tcp://rpc-edgenet.akashdev.net:26657
# export AKASH_NODE=tcp://147.75.105.135:26657
# export AKASH_NODE=tcp://147.75.109.209:26657
export AKASH_NODE=http://135.181.60.250:26657

export AKASH_GSEQ=1
export AKASH_OSEQ=1

export AKASH_YES=true

akash(){
  ./bin/akash "$@"
}
