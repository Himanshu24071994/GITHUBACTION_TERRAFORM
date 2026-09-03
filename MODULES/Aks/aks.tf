resource "azurerm_kubernetes_cluster" "aks" {
  for_each = var.aks

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix
  sku_tier            = each.value.sku_tier

  default_node_pool {
    name       = "system"
    node_count = each.value.node_count
    vm_size    = each.value.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}

output "aks_ids" {
  value = {
    for k, v in azurerm_kubernetes_cluster.aks :
    k => v.id
  }
}
