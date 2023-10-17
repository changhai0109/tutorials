#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
cd ${DIR}

rm result*.txt
rm inputs/workload/*.eg
rm inputs/workload/debug.log
