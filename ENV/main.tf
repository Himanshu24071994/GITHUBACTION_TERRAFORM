

module "rg" {
  source         = "../MODULES/Resouce_group"
  resource_group = var.resource_group
}

module "stg" {
  depends_on     = [module.rg]
  source         = "../MODULES/Account_storage"
  accountstorage = var.accountstorage
}

module "aks" {
  depends_on = [module.rg]
  source     = "../MODULES/Aks"
  aks        = var.aks
}

module "acr" {
  depends_on = [module.rg]
  source     = "../MODULES/Acr"
  acr        = var.acr
}
