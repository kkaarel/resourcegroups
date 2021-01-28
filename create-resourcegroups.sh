
#!/bin/bash

# requires version 2.0.20 or later of the Azure CLI

# Create resource groups 

# Region of your choice

l=westeurope

FILE="./resourcename.txt"


for RESOURCE_NAME in $(cat resourcename.txt)
do 
  echo 
  az group create \
        -l $l \
        -n rg-euw-dataplatform-$RESOURCE_NAME-$ENV \
        --subscription $SUB 
done


