terraform {
  backend "azurerm" {
    resource_group_name = "publictf"
    storage_account_name = "publictf"
    container_name = "tfstate"
    key = "<KEY>"
    sas_token = "<SAS_TOKEN>"
  }
}

