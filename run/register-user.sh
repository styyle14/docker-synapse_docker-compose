#!/bin/bash

#set -x
set -e

DOCKER_SYNAPSE_CONFIG_FILE="./config/homeserver.yaml"

register_new_matrix_user -c "$DOCKER_SYNAPSE_CONFIG_FILE" "https://localhost:8448"

