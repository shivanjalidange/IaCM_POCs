locals {
  common_tags = {
    Environment = var.environment
    Owner        = var.owner
    Type         = var.type
    Cost-Center  = var.cost_center
    Managed-By   = var.managed_by
  }
}
