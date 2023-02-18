resource "azurerm_mssql_server" "sqlserver" {
  name                         = "${var.sqlserver_name_prefix}-${var.system}-${var.env}"
  resource_group_name          = azurerm_resource_group.data.name
  location                     = azurerm_resource_group.data.location
  version                      = var.sqlversion
  administrator_login          = "adminuser"
  administrator_login_password = "P@$$w0rd1234!"
  minimum_tls_version          = "1.2"
  public_network_access_enabled = false
}

# Create a the SQL database 
resource "azurerm_sql_database" "db" {
  depends_on = [azurerm_mssql_server.sqlserver]
  
  name = var.db-name
  resource_group_name = azurerm_resource_group.data.name
  location = azurerm_resource_group.data.location
  server_name = azurerm_mssql_server.sqlserver.name
  edition = "Standard"
  zone_redundant = false
  read_scale = false
}

resource "azurerm_private_endpoint" "endpoint" {
  depends_on = [azurerm_mssql_server.sqlserver]
  name = var.system
  location = azurerm_resource_group.data.location
  resource_group_name = azurerm_resource_group.data.name
  subnet_id = data.azurerm_subnet.subnetpriv.id
  private_service_connection {
    name = var.system
    is_manual_connection = "false"
    private_connection_resource_id = azurerm_mssql_server.sqlserver.id
    subresource_names = ["sqlServer"]
  }
}

# DB Private Endpoint Connecton
data "azurerm_private_endpoint_connection" "connection" {
  depends_on = [azurerm_private_endpoint.endpoint]
  name = azurerm_private_endpoint.endpoint.name
  resource_group_name = azurerm_resource_group.data.name
}

output "sql_private_link_endpoint_ip" {
  description = "SQL Private Link Endpoint IP"
  value = data.azurerm_private_endpoint_connection.connection.private_service_connection.0.private_ip_address
}

/*resource "azurerm_sql_firewall_rule" "fw01" {
  count               = var.enable_firewall_rules && length(var.firewall_rules) > 0 ? length(var.firewall_rules) : 0
  name                = element(var.firewall_rules, count.index).name
  resource_group_name = azurerm_resource_group.data.name
  server_name         = azurerm_mssql_server.sqlserver.name
  start_ip_address    = element(var.firewall_rules, count.index).start_ip_address
  end_ip_address      = element(var.firewall_rules, count.index).end_ip_address
}*/