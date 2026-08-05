package policies

deny[msg] {
    resource := input.resource_changes[_]
    resource.type == "azurerm_storage_account"

    not regex.match("^[a-z0-9]{3,24}$", resource.change.after.name)

    msg := sprintf(
        "Resource '%s' has an invalid Azure Storage Account name '%s'. Name must be 3-24 characters, lowercase alphanumeric only.",
        [resource.address, resource.change.after.name]
    )
}

deny[msg] {
    resource := input.resource_changes[_]
    resource.type == "aws_vpc"

    not regex.match("^IaCM-.*", resource.change.after.tags.Name)

    msg := sprintf(
        "VPC '%s' does not follow the required naming convention.",
        [resource.change.after.tags.Name]
    )
}

deny[msg] {
    resource := input.resource_changes[_]
    resource.type == "aws_subnet"

    not regex.match("^IaCM-.*", resource.change.after.tags.Name)

    msg := sprintf(
        "Subnet '%s' does not follow the required naming convention.",
        [resource.change.after.tags.Name]
    )
}

deny[msg] {
    resource := input.resource_changes[_]
    resource.type == "aws_security_group"

    not regex.match("^IaCM-.*", resource.change.after.tags.Name)

    msg := sprintf(
        "Security Group '%s' does not follow the required naming convention.",
        [resource.change.after.tags.Name]
    )
}