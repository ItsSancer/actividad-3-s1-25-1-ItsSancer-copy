#!/bin/bash

readme_path="../../README.md"

current_time=$(date +"%Y-%m-%d %H:%M:%S")

sed -i "s/Última ejecución: .*/Última ejecución: $current_time/" "$readme_path"

echo "Campo 'Última ejecución' actualizado a: $current_time en README.md"