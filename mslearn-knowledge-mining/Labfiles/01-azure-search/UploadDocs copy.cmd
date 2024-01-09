@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=d577c580-2e03-4a0a-88de-21247d65a20f
set azure_storage_account=qozeemodeniran
set azure_storage_key=aaNR9+rjTzpe+0SF0KWdQ0vlVqkd6Jz0elAFRBf0P2EF6K/gC8laEbHno2OXasJxIvMcUDQEdKtl+AStcgRX/A==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
