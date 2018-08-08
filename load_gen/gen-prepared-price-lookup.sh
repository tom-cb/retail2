#!/bin/bash

let i=1;

while [ $i -lt 100 ];
do
    let j=10000000000001;
    while [ $j -lt 10000000000010 ];
    do
      echo "{\"prepared\":\"price_lookup\",\"\$id\":\"store::$i::product::$j\"}"
      let j=$j+1;
    done
let i=$i+1
done

