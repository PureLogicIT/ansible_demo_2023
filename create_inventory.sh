#!/bin/bash
echo "Inventory name:"
read name
cp inventory_template.yaml inventory/$name.yaml
sed -i "s/<RHEL8_IP>/$(cat $name.json | jq -r '.RHEL8.value[0]')/g" inventory/$name.yaml
sed -i "s/<RHEL9_0_IP>/$(cat $name.json | jq -r '.RHEL9.value[0]')/g" inventory/$name.yaml
sed -i "s/<RHEL9_1_IP>/$(cat $name.json | jq -r '.RHEL9.value[1]')/g" inventory/$name.yaml
