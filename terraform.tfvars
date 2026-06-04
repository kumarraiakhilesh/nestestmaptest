recource1 = {
  rg1 = {
    name     = "rg_akhilesh1"
    location = "westus"
  }
}
storage1 = {
  stg1 = {
    name                     = "stgakhilesh1"
    location                 = "centralindia"
    resource_group_name      = "rg_akhilesh1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  stg3 = {
    name                     = "stgakhilesh3"
    location                 = "centralindia"
    resource_group_name      = "rg_akhilesh1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
vnet = {
  vnet1 = {
    name                = "vnet1"
    location            = "westus"
    resource_group_name = "rg_akhilesh1"
    address_space       = ["10.0.0.0/16"]
    subnet = {
      sub1 = {
        name             = "frontend"
        address_prefixes = ["10.0.1.0/24"]
      }
      sub2 = {
        name             = "backend"
        address_prefixes = ["10.0.2.0/24"]
      }
      sub3 = {
        name             = "database"
        address_prefixes = ["10.0.3.0/24"]
      }

    }
  }
}
