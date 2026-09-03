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
