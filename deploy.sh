#!/bin/bash

RESOURCE="azure_static_sites_demo_westus2"
ARM_TEMPLATE_FILE="staticSitesPayload.json"
SUBSCRIPTION_ID="198cd413-7754-4cae-b7b4-048151e7bb79"
ARM_URL="https://management.azure.com/subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE/providers/Microsoft.Web/staticSites/armtest0?api-version=2019-12-01-preview"

# Create a temporary resource group
# az group create --name $RESOURCE --location "westus"

# az rest \
#   --debug --verbose \
#   --method get \
#   --uri "$ARM_URL"

echo ">> deploying to $ARM_URL"
az rest \
  --method put \
  --uri "$ARM_URL" \
  --body "@$ARM_TEMPLATE_FILE" 