output "storage_account_name" {
  value = azurerm_storage_account.res-0.name
}

output "storage_account_id" {
  value = azurerm_storage_account.res-0.id
}

output "resource_group_name" {
  value = azurerm_storage_account.res-0.resource_group_name
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.res-0.primary_blob_endpoint
}