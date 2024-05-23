#!/bin/bash
cd src

src="./os.lua"
dst="../_os.lua"
declare -a modules
# Read and save the modules to import
while IFS= read -r line; do
  if [[ $line == 'import_module("'* && $line =~ ")" ]]; then
    path=$(echo "$line" | grep -o '"[^"]*"' | sed 's/"//g')
    if [[ -n $path ]]; then
      modules+=("$path")
    fi
  fi
done < "$src"
# Merge
code=$(<"$src")
for i in "${modules[@]}"
do
  to_replace="import_module(\"$i\")"
	content=$(cat "$i")
  code=$(echo "${code/$to_replace/$content}")
done
if [ "$1" == "minify" ]; then
  # (Very bad) minifier
  code=$(echo "$code" | sed 's/--.*$//') # delete comments
  code=$(echo "$code" | tr '\n' ' ' | tr '\t' ' ')
  code=$(echo "$code" | tr -s ' ')
  code=$(echo "$code" | tr -s ' ')
  code=$(echo "$code" | tr -s ' ')
  code=$(echo "$code" | tr -s ' ')
  code=$(echo "$code" | tr -s ' ')
fi
# Export
echo "$code" > "$dst"

src="./launcher.lua"
dst="../_launcher.lua"
declare -a modules
# Read and save the modules to import
while IFS= read -r line; do
  if [[ $line == 'import_module("'* && $line =~ ")" ]]; then
    path=$(echo "$line" | grep -o '"[^"]*"' | sed 's/"//g')
    if [[ -n $path ]]; then
      modules+=("$path")
    fi
  fi
done < "$src"
# Merge
code=$(<"$src")
for i in "${modules[@]}"
do
  to_replace="import_module(\"$i\")"
	content=$(cat "$i")
  code=$(echo "${code/$to_replace/$content}")
done
if [ "$1" == "minify" ]; then
  # (Very bad) minifier
  code=$(echo "$code" | sed 's/--.*$//') # delete comments
  code=$(echo "$code" | tr '\n' ' ' | tr '\t' ' ')
  code=$(echo "$code" | tr -s ' ')
  code=$(echo "$code" | tr -s ' ')
  code=$(echo "$code" | tr -s ' ')
  code=$(echo "$code" | tr -s ' ')
  code=$(echo "$code" | tr -s ' ')
fi
# Export
echo "$code" > "$dst"
