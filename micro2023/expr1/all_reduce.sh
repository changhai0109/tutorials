#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

ASTRASIM_DIR=${DIR}/../astra-sim
ASTRASIM_BIN=${ASTRASIM_DIR}/build/astra_analytical/build/AnalyticalAstra/bin/AnalyticalAstra

WORKLOAD=${DIR}/inputs/workload/all_reduce/allReduce
NETWORK=${DIR}/inputs/network/Torus2D.json
SYSTEM=${DIR}/inputs/system/Torus2D.txt
MEMORY=${DIR}/inputs/memory/no_memory_expansion.json

# converter all_reduce text file to chakra egs
bash ${DIR}/inputs/workload/all_reduce/convert_chakra.sh

# run simulation
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}"

