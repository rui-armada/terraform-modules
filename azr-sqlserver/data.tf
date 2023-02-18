data "azurerm_subnet" "subnetpriv" {
  name                 = "private"
  virtual_network_name = "paas-vnet-tst"
  resource_group_name  = "paas-rg-network-tst"
}