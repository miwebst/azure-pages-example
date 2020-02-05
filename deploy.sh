#!/bin/bash

RESOURCE="azure_pages"
ARM_TEMPLATE="staticSitesPayload.json"
az group create --name $RESOURCE --location "westus"

az group deployment validate \
  --resource-group $RESOURCE \
  --template-file $ARM_TEMPLATE

