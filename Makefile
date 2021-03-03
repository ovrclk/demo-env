AKASH_NET_BASE := https://raw.githubusercontent.com/ovrclk/net/master
AKASH_NET      := $(AKASH_NET_BASE)/edgenet
#AKASH_VERSION  = $(shell curl "$(AKASH_NET)/version.txt")
#AKASH_VERSION  = v0.10.0
AKASH_VERSION  = v0.10.1-ghcr3

install:
	mkdir -p bin
	curl -s https://raw.githubusercontent.com/ovrclk/akash/master/godownloader.sh | sh -s -- "$(AKASH_VERSION)"

install-genesis:
	curl -s "$(AKASH_NET)/genesis.json" > data/config/genesis.json
