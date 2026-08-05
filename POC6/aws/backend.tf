terraform {
  backend "http" {
    address = "https://app.harness.io/gateway/iacm/api/orgs/playground/projects/shivanjali_playground/workspaces/iacm_poc6_aws/terraform-backend?accountIdentifier=gLXLxjTmQhGmdJXhAORKag"
    username = "harness"
    lock_address = "https://app.harness.io/gateway/iacm/api/orgs/playground/projects/shivanjali_playground/workspaces/iacm_poc6_aws/terraform-backend/lock?accountIdentifier=gLXLxjTmQhGmdJXhAORKag"
    lock_method = "POST"
    unlock_address = "https://app.harness.io/gateway/iacm/api/orgs/playground/projects/shivanjali_playground/workspaces/iacm_poc6_aws/terraform-backend/lock?accountIdentifier=gLXLxjTmQhGmdJXhAORKag"
    unlock_method = "DELETE"
  }
}