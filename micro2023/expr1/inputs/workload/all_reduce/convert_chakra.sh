#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
CHAKRA_DIR=${DIR}/../../../../astra-sim/extern/graph_frontend/chakra

cd ${DIR}

PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allReduce.txt --output_filename ${DIR}/allReduce --num_dims 2 --num_npus 16 --num_passes 1
