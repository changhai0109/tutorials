#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

ASTRASIM_DIR=${DIR}/../astra-sim
ASTRASIM_BIN=${ASTRASIM_DIR}/build/astra_analytical/build/AnalyticalAstra/bin/AnalyticalAstra

cd ${DIR}

WORKLOAD=${DIR}/inputs/workload/transformer_8/transformer8.dp
NETWORK=${DIR}/inputs/network/Torus2D.json
SYSTEM=${DIR}/inputs/system/Torus2D.txt
MEMORY=${DIR}/inputs/memory/no_memory_expansion.json

# run simulation
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_transformer8.txt

