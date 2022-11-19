AKASH_VERSION  = v0.1.0

install:
	mkdir -p bin
	curl -s https://raw.githubusercontent.com/ovrclk/provider-services/main/godownloader.sh | sh -s -- "$(AKASH_VERSION)"
