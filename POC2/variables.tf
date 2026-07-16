variable "storage_account_name" {
  description = "Azure Storage Account Name"
  type        = string
}

variable "resource_group_name" {
  description = "Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "account_tier" {
  description = "Storage Account Tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication Type"
  type        = string
  default     = "LRS"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner"
  type        = string
  default     = "Shivanjali"
}