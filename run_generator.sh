#!/bin/bash
# Script to execute edX Generator

edx_generator_script="./edx_generator.py"
input="./input"
output="./output"

python3 $edx_generator_script $input $output
