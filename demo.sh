#!/usr/bin/env bash

source env.sh

export AKASH_OWNER="$(akash keys show "$AKASH_FROM" -a)"
export AKASH_DSEQ=$(\
  akash query deployment list -o json \
  | jq -Mr '.deployments[].deployment.deployment_id.dseq' \
  | sort -rn \
  | head -1
)

if [ -z "$AKASH_DSEQ" ]; then
  export AKASH_DSEQ=1
fi

incdseq() {
  ((AKASH_DSEQ++))
}
