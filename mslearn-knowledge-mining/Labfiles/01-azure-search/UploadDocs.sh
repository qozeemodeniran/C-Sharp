#!/bin/bash

# Set values for your storage account
subscription_id="d577c580-2e03-4a0a-88de-21247d65a20f"
azure_storage_account="qozeemodeniran"
azure_storage_key="aaNR9+rjTzpe+0SF0KWdQ0vlVqkd6Jz0elAFRBf0P2EF6K/gC8laEbHno2OXasJxIvMcUDQEdKtl+AStcgRX/A=="

# Creating container
echo "Creating container..."
az storage container create --account-name $azure_storage_account --subscription $subscription_id --name margies --public-access blob --auth-mode key --account-key $azure_storage_key --output none

# Uploading files
echo "Uploading files..."
az storage blob upload-batch -d margies -s data --account-name $azure_storage_account --auth-mode key --account-key $azure_storage_key --output none
