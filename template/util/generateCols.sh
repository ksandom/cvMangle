#!/bin/bash
# Generate column sizes.

for i in {5..9}; do
    echo $i
    sed "s/number/$i/g" colTemplate.md > "col0$i.md"
done


for i in {10..95}; do
    echo $i
    sed "s/number/$i/g" colTemplate.md > "col$i.md"
done


