terraform {
  backend "azurerm" {
    resource_group_name = "publictf"
    storage_account_name = "publictf"
    container_name = "tfstate"
    key = "wai"
    sas_token = "sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupiytfx&se=2026-09-25T15:39:38Z&st=2024-09-25T07:39:38Z&spr=https&sig=67WR5SRVXpKp349tKt4mmApxPeZpdqqy2r0BqDdBlig%3D"
  }
}

