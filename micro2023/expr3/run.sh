#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

ASTRASIM_DIR=${DIR}/../astra-sim
ASTRASIM_BIN=${ASTRASIM_DIR}/build/astra_analytical/build/AnalyticalAstra/bin/AnalyticalAstra

cd ${DIR}

SYSTEM=${DIR}/inputs/system/Torus2D.txt
MEMORY=${DIR}/inputs/memory/no_memory_expansion.json
WORKLOAD=${DIR}/inputs/workload/allReduce

# converter all_reduce text file to chakra egs
bash ${DIR}/inputs/workload/convert_chakra.sh

NETWORK=${DIR}/inputs/network/Torus2D_4_44.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_4_44.txt

NETWORK=${DIR}/inputs/network/Torus2D_8_40.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_8_40.txt

NETWORK=${DIR}/inputs/network/Torus2D_12_36.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_12_36.txt

NETWORK=${DIR}/inputs/network/Torus2D_16_32.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_16_32.txt

NETWORK=${DIR}/inputs/network/Torus2D_20_28.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_20_28.txt

NETWORK=${DIR}/inputs/network/Torus2D_24_24.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_24_24.txt

NETWORK=${DIR}/inputs/network/Torus2D_28_20.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_28_20.txt

NETWORK=${DIR}/inputs/network/Torus2D_32_16.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_32_16.txt

NETWORK=${DIR}/inputs/network/Torus2D_36_12.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_36_12.txt

NETWORK=${DIR}/inputs/network/Torus2D_40_8.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_40_8.txt

NETWORK=${DIR}/inputs/network/Torus2D_44_4.json
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > results_44_4.txt