resource "azurerm_resource_group" "data" {
  location = var.resource_group_location
  name     = "${var.resource_group_name_prefix}-data-${var.system}-${var.env}"

  tags = {
    system      = var.system
    environment = var.env
  }
}
