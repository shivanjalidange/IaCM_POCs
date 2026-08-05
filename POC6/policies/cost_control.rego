package policies

deny[msg] {
    resource := input.resource_changes[_]
    resource.type == "azurerm_storage_account"

    resource.change.after.account_replication_type != "LRS"

    msg := sprintf("Resource '%s' uses invalid replication type '%s'. Cost control policy requires account replication type to be LRS.", [resource.address, resource.change.after.account_replication_type])
}