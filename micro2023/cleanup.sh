#!/bin/bash

rm -rf astra-sim

# install chakra and its pre-requests, which is used by astrasim-2.0
python3 -m pip uninstall pydot graphviz -y
python3 -m pip uninstall chakra -y

# then astra-sim binary is sitting at build/astra_analytical/build/bin/AstraSim_Analytical_Congestion_Unaware and ready to use. 
# Good Job!

