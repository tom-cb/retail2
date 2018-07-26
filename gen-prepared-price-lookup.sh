#!/bin/bash

for i in `seq 1 100`;
do
    for j in `seq 1 10`;
    do
      echo "{\"prepared\":\"price_lookup\",\"\$id\":\"store::$i::product::$j\"}"
    done
done
