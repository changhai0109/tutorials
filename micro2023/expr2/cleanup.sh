#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
cd ${DIR}

rm *.txt
rm inputs/workload/*.eg
rm inputs/workload/*.txt
rm inputs/workload/debug.log
