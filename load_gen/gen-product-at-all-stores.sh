#!/bin/bash


    let j=1;
    while [ $j -lt 1000 ];
    do
      echo "{\"statement\":\"select store_pricing.store_id, store_pricing.product_id,store_pricing.store_group_id,store_pricing.store_prices[0] as latest_store_prices,group_pricing.store_group_prices[0] as latest_group_prices FROM pricing as group_pricing  JOIN pricing as store_pricing  ON store_pricing.store_group_id = group_pricing.store_group_id AND group_pricing.type='store_group_product' AND store_pricing.product_id = group_pricing.product_id AND group_pricing.product_id = $j    AND store_pricing.product_id = $j    AND store_pricing.type='store_product'\"}"
      let j=$j+1;
    done
