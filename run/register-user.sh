#!/bin/bash

#set -x
set -e

DOCKER_SYNAPSE_CONFIG_FILE="./config/homeserver.yaml"

synctl start "$DOCKER_SYNAPSE_CONFIG_FILE"
register_new_matrix_user -c "$DOCKER_SYNAPSE_CONFIG_FILE" "https://localhost:8448"

