resource "azurerm_resource_group" "rg" {
  name     = "rg-aks-${var.env}"
  location = var.location
}

module "acr" {
  source              = "./modules/acr"
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}

module "aks" {
  source              = "./modules/aks"
  name                = "aks-${var.env}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  vm_size             = var.aks_vm_size
  node_count          = var.node_count
  acr_id              = module.acr.id
}
