provider "azurerm" {
  features {
  }
  resource_provider_registrations = "none"
  subscription_id                 = "25010899-5732-45e8-822d-b3e179ad1d0c"
  environment                     = "public"
  use_msi                         = false
  use_cli                         = true
  use_oidc                        = false
}
