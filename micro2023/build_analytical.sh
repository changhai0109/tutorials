#!/bin/bash

# clone git repository
git clone https://github.com/astra-sim/astra-sim.git
cd astra-sim
git submodule update --init --recursive

# build astrasim with analytical network backend (other network backend is similar)
bash build/astra_analytical/build.sh -c

# install chakra and its pre-requests, which is used by astrasim-2.0
python3 -m pip install pydot graphviz --user
python3 -m pip install extern/graph_frontend/chakra --user

# then astra-sim binary is sitting at build/astra_analytical/build/bin/AstraSim_Analytical_Congestion_Unaware and ready to use. 
# Good Job!

