package policies

deny[msg] {
    resource := input.resource_changes[_]
    resource.change.after !=null 

    not resource.change.after.tags.Environment
    msg := sprintf("%s is missing Environment tag", [resource.address])
}

deny[msg] {
    resource := input.resource_changes[_]
    resource.change.after !=null 

    not resource.change.after.tags.Owner
    msg := sprintf("%s is missing Owner tag", [resource.address])
}

deny[msg] {
    resource := input.resource_changes[_]
    resource.change.after !=null 

    not resource.change.after.tags["Cost-Center"]
    msg := sprintf("%s is missing Cost-Center tag", [resource.address])
}

deny[msg] {
    resource := input.resource_changes[_]
    resource.change.after !=null 

    not resource.change.after.tags["Managed-By"]
    msg := sprintf("%s is missing Managed-By tag", [resource.address])
}