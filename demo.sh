#!/usr/bin/env bash

# set -x

source env.sh

# --owner
export -n AKASH_OUTPUT
export AKASH_OWNER="$(akash keys show "$AKASH_FROM" -a)"
export AKASH_OUTPUT

# --dseq
export AKASH_DSEQ=$(\
  akash query deployment list -o json \
  | jq -Mr '.deployments[].deployment.deployment_id.dseq' \
  | sort -rn \
  | head -1
)

if [ -z "$AKASH_DSEQ" ]; then
  export AKASH_DSEQ=1
fi

# command to increment dseq
incdseq() {
  ((AKASH_DSEQ++))
}
