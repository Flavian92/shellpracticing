#!/bin/bash
#set -x
# Set the comma-separated string
csv_string="vsphere_cluster,vsphere_folder,datacenter,vmtemp,name,location,role,ipv4_address,ipv4_gateway,ipv4_netmask"

# Set the IFS to comma (,) without trimming spaces
IFS=, read -ra fields <<< "$csv_string"

# Loop through the fields and print them
for field in "${fields[@]}"; do
  echo "$field"
done
