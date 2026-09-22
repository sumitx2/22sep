rgp = {
  rg1 = {
    name     = "gopu1"
    location = "centralindia"
  }
}

vnetsp = {
  vnet1 = {
    name          = "vnet1"
    location      = "centralindia"
    rgname        = "gopu1"
    address_space = ["192.168.0.0/16"]
  }
}

subnetsp = {
  subnet1 = {
    name                 = "frontend_subnet"
    resource_group_name  = "gopu1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["192.168.0.0/24"]
  }
  subnet2 = {
    name                 = "backend_subnet"
    resource_group_name  = "gopu1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["192.168.1.0/24"]
  }
  subnet3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "gopu1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["192.168.3.0/24"]
  }
}

public_ipp = {
  pip1 = {
    public_ip_name      = "BastionPIP"
    resource_group_name = "gopu1"
    location            = "centralindia"
    allocation_method   = "Static"
  }

}

vmp = {
  vm1 = {
    vm_name              = "frontendVM"
    nic_name             = "Nic1"
    location             = "centralindia"
    resource_group_name  = "gopu1"
    subnet_name          = "frontend_subnet"
    virtual_network_name = "vnet1"

  }
  vm2 = {
    vm_name              = "BackendVM"
    nic_name             = "Nic2"
    location             = "centralindia"
    resource_group_name  = "gopu1"
    subnet_name          = "backend_subnet"
    virtual_network_name = "vnet1"
  }

}

bastionP = {
  bastion1={
  name                 = "My_bastion"
  location             = "Centralindia"
  resource_group_name  = "gopu1"
  subnet_name          = "AzureBastionSubnet"
  virtual_network_name = "vnet1"
  public_ip_name       = "BastionPIP"
  }
}

