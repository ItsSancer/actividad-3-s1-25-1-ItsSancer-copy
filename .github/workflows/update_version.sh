#!/bin/bash

readme_path="./README.md"


version_line=$(grep -n -E "Versión actual:\s*v[0-9]+\.[0-9]+\.[0-9]+" "$readme_path")


current_version=$(echo $version_line | grep -oE "[0-9]+\.[0-9]+\.[0-9]+")


new_version=$(echo $current_version | awk -F. '{printf "%d.%d.%d", $1, $2, $3 + 1}')

sed -i "s/$current_version/$new_version/g" "$readme_path"
echo "Versión actualizada de $current_version a $new_version en README.md"