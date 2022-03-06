AKASH_NET_BASE ?= https://raw.githubusercontent.com/ovrclk/net/master
AKASH_NET      ?= $(AKASH_NET_BASE)/mainnet
# AKASH_VERSION  = $(shell curl "$(AKASH_NET)/version.txt")
AKASH_VERSION  = v0.14.1

install:
	mkdir -p bin
	curl -s https://raw.githubusercontent.com/ovrclk/akash/master/godownloader.sh | sh -s -- "$(AKASH_VERSION)"
