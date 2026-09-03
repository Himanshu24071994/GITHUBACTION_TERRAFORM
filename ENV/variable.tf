variable "resource_group" {
  type = map(object({
    name = string
    location = string
  }))
}

variable "accountstorage" {
  type = map(object({
  name                     = string
  resource_group_name      = string
  location                 = string
  account_tier             = string
  account_replication_type = string
  }))
}

variable "aks" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    kubernetes_version  = optional(string)
    node_count          = optional(number)
    vm_size             = optional(string)
    sku_tier            = optional(string)
  }))
}

variable "acr" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    sku                 = string
    admin_enabled       = bool
  }))
}

