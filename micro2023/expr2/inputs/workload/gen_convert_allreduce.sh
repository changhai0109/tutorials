#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
CHAKRA_DIR=${DIR}/../../../astra-sim/extern/graph_frontend/chakra

cd ${DIR}
python3 gen_allreduce.py

PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.10.txt --output_filename ${DIR}/allReduce.0_10 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.15.txt --output_filename ${DIR}/allReduce.0_15 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.20.txt --output_filename ${DIR}/allReduce.0_20 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.25.txt --output_filename ${DIR}/allReduce.0_25 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.30.txt --output_filename ${DIR}/allReduce.0_30 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.35.txt --output_filename ${DIR}/allReduce.0_35 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.40.txt --output_filename ${DIR}/allReduce.0_40 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.45.txt --output_filename ${DIR}/allReduce.0_45 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.50.txt --output_filename ${DIR}/allReduce.0_50 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.55.txt --output_filename ${DIR}/allReduce.0_55 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.60.txt --output_filename ${DIR}/allReduce.0_60 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.65.txt --output_filename ${DIR}/allReduce.0_65 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.70.txt --output_filename ${DIR}/allReduce.0_70 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.75.txt --output_filename ${DIR}/allReduce.0_75 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.80.txt --output_filename ${DIR}/allReduce.0_80 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.85.txt --output_filename ${DIR}/allReduce.0_85 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.90.txt --output_filename ${DIR}/allReduce.0_90 --num_dims 2 --num_npus 16 --num_passes 1
PYTHONPATH=${CHAKRA_DIR} python3 -m et_converter.et_converter --input_type Text --input_filename ${DIR}/allreduce_0.95.txt --output_filename ${DIR}/allReduce.0_95 --num_dims 2 --num_npus 16 --num_passes 1


