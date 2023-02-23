resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.system}-${var.env}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.vm.location
  resource_group_name = azurerm_resource_group.vm.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet-${var.system}-${var.env}"
  resource_group_name = azurerm_resource_group.vm.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]

}