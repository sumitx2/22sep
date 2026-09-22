module "RG" {
  source = "../../modules/azurerm_resource_group"
  rgm    = var.rgp
}

module "VNET" {
  source     = "../../modules/azurerm_virtual_network"
  vnetsm     = var.vnetsp
  depends_on = [module.RG]
}
module "SUBNET" {
  source     = "../../modules/azurerm_subnet"
  subnetsm   = var.subnetsp
  depends_on = [module.VNET]
}

module "PUBLICIP" {
  source     = "../../modules/azurerm_public_ip"
  public_ipm = var.public_ipp
  depends_on = [module.RG]
}

module "VM" {
  source     = "../../modules/azurerm_virtual_machine"
  vmm        = var.vmp
  depends_on = [module.SUBNET, module.PUBLICIP]
}
