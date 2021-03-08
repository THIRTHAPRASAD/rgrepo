resource "azurerm_resource_group" "example1" {
  name     = "rg2"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "sa2"
  resource_group_name      = azurerm_resource_group.example1.name
  location                 = azurerm_resource_group.example1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
