AKASH_NET_BASE ?= https://raw.githubusercontent.com/ovrclk/net/master
AKASH_NET      ?= $(AKASH_NET_BASE)/mainnet
AKASH_VERSION  = v$(shell curl "$(AKASH_NET)/version.txt")

install:
	mkdir -p bin
	curl -s https://raw.githubusercontent.com/ovrclk/akash/master/godownloader.sh | sh -s -- "$(AKASH_VERSION)"
