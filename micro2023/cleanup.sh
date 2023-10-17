#!/bin/bash

# delete astra-sim codes/builds
rm -rf astra-sim

# uninstall chakra and its prerequests
python3 -m pip uninstall pydot graphviz -y
python3 -m pip uninstall chakra -y

# cleanup expr results
bash cleanup_exprs.sh
