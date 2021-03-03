Initiate environment

```sh
source env.sh
```

Add key if necessary

```sh
akash keys add demo --recover
```

View balance
```sh
akash query bank balances $(akash keys show deploy -a)
```

Create client certificate
```sh
akash tx cert create client
```

Query providers
```sh
akash query provider list
```

Get provider status
```sh
akash provider status $address
```

Create auditor key
```sh
akash keys add audit
```

Send tokens to auditor
```sh
akash tx send deploy $(akash keys show -a audit) 1000000uakt
```

Create audited attributes
```sh
akash tx audit attr create akash15fv00ly8u33qr78r2llfu67uwd9rrhhxmgaldq datacenter equinix-metal-ams --from audit
akash tx audit attr create akash1v9pdl8ryyvcuz44e249xnkuphzu6afae23fuln datacenter equinix-metal-ewr --from audit
```

Create deployment
```sh
akash tx deployment create ff.yaml --dseq 1
```

List deployment
```sh
akash query deployment list --owner $(akash keys show deploy -a)
```

List bids
```sh
akash query market bid list --owner $(akash keys show deploy -a)
```

Create lease
```sh
akash tx market lease create --owner $(akash keys show deploy -a) --provider akash15fv00ly8u33qr78r2llfu67uwd9rrhhxmgaldq --dseq 1
```

Send manifest
```sh
akash provider send-manifest ff.yaml --dseq 1 --provider akash15fv00ly8u33qr78r2llfu67uwd9rrhhxmgaldq
```

Get lease status
```sh
akash provider lease-status --dseq 1 --provider akash15fv00ly8u33qr78r2llfu67uwd9rrhhxmgaldq
```

Get lease logs
```sh
akash provider lease-logs --follow
```

Close deployment
```sh
akash tx deployment close --dseq 1
```
