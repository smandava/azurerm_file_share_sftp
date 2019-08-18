provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  version         = "~> 1.32"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

"terraform" {
  required_version = "~> 0.11"  
}

