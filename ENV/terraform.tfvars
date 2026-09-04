resource_group = {
  fe = {
    name     = "Axion-rg2"
    location = "eastus"
  }
}

accountstorage = {
  fe = {
    name                     = "axionstorage"
    resource_group_name      = "Axion-rg2"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

aks = {
  demo = {
    name                = "Axion-aks"
    location            = "eastus"
    resource_group_name = "Axion-rg2"
    dns_prefix          = "Axionaks"
    node_count          = 1
    vm_size             = "Standard_D2s_v7"
    sku_tier            = "Free"
  }
}

acr = {
  demo = {
    name                = "axionacraxionhimanshu"
    resource_group_name = "Axion-rg2"
    location            = "eastus"
    sku                 = "Basic"
    admin_enabled       = true
  }
}
