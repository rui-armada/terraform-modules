resource "azurerm_resource_group" "vm" {
  location = var.resource_group_location
  name     = "${var.resource_group_name_prefix}-vm-${var.system}-${var.env}"

  tags = {
    system      = var.system
    environment = var.env
  }
}
