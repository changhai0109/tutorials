#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
cd ${DIR}

rm inputs/workload/all_reduce/*.eg
rm inputs/workload/all_reduce/debug.log
