resource "azurerm_route_table" "rt-paas-tst" {
  name                          = "${var.route_table_name_prefix}-${var.name}-${var.env}" //"rt-paas-tst"
  location                      = "northeurope"
  resource_group_name           = "rg-nwr-dimep-tst"
  disable_bgp_route_propagation = false

  route {
    name           = var.route_name //"icinga"
    address_prefix = var.address_prefix //"172.29.50.32/28"
    next_hop_type  = var.next_hop_type //"VirtualAppliance"
    next_hop_in_ip_address = var.next_hop_in_ip_address //"172.29.255.4"
  }
}