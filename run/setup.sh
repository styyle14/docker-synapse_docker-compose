#!/bin/bash

#set -x
set -e

echo -n "Synapse Domain Name: "
read SYNAPSE_DOMAIN_NAME

if [ -z "$SYNAPSE_DOMAIN_NAME" ]; then
	echo "No domain name entered."
	echo "Exiting now."
	exit 1
fi

python -m synapse.app.homeserver \
    --server-name "$SYNAPSE_DOMAIN_NAME" \
    --config-path "config/homeserver.yaml" \
    --generate-config \
    --report-stats=yes

