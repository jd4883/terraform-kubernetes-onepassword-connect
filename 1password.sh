#!/bin/bash
BASE=$(kubectl get secrets -n cluster-tools onepassword-token -o json | jq '.data | map_values(@base64d)'|jq .token)
OUTPUT="{ \"token\": $BASE }"
echo $OUTPUT|jq
