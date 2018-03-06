#!/bin/bash

CACHE_SIZE=0.2
FILES=(epsilon_lru_lfu.txt epsilon_lfu_lru.txt)
ALGORITHMS=(LFU ARC LaCReME_LFU_ARC)

for ((i=0;i<${#CACHE_SIZE[@]};++i)); do
    python ../run.py "${CACHE_SIZE}" "${FILES[i]}" "${ALGORITHMS[@]}"
done

