#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

ASTRASIM_DIR=${DIR}/../astra-sim
ASTRASIM_BIN=${ASTRASIM_DIR}/build/astra_analytical/build/AnalyticalAstra/bin/AnalyticalAstra

NETWORK=${DIR}/inputs/network/Torus2D.json
SYSTEM=${DIR}/inputs/system/Torus2D.txt
MEMORY=${DIR}/inputs/memory/no_memory_expansion.json

# converter all_reduce text file to chakra egs
bash ${DIR}/inputs/workload/gen_convert_allreduce.sh 

# run simulation
WORKLOAD=${DIR}/inputs/workload/allReduce.0_10
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_10.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_15
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_15.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_20
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_20.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_25
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_25.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_30
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_30.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_35
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_35.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_40
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_40.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_45
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_45.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_50
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_50.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_55
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_55.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_60
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_60.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_65
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_65.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_70
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_70.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_75
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_75.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_80
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_80.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_85
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_85.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_90
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_90.txt 

WORKLOAD=${DIR}/inputs/workload/allReduce.0_95
${ASTRASIM_BIN} \
    --workload-configuration="${WORKLOAD}" \
    --system-configuration="${SYSTEM}" \
    --network-configuration="${NETWORK}" \
    --remote-memory-configuration="${MEMORY}" > result_0_95.txt 
