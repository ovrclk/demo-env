#!/usr/bin/env bash

source env.sh

export AKASH_OWNER="$(akash keys show "$AKASH_FROM" -a)"
export AKASH_DSEQ=$(\
  akash query deployment list -o json \
  | jq -Mr '.deployments[].deployment.deployment_id.dseq' \
  | sort -rn \
  | head -1  \
)

# export AKASH_DSEQ=2

incdseq() {
  ((AKASH_DSEQ++))
}
