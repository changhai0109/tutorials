#!/bin/bash

rm -rf astra-sim

python3 -m pip uninstall pydot graphviz -y
python3 -m pip uninstall chakra -y

bash expr1/cleanup.sh
bash expr2/cleanup.sh
