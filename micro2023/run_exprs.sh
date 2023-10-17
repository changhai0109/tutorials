#!/bin/bash

# run expr1
bash expr1/all_reduce.sh
bash expr1/transformer8.sh

# run expr2
bash expr2/run.sh

# run expr3
bash expr3/run.sh