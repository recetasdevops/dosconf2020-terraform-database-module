resource "azurerm_sql_server" "sql_server" {
  name                         =  var.database_server_name
  resource_group_name          =  var.resource_group
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sqlserver_user
  administrator_login_password = var.sqlserver_pass

  tags = var.tags
}

resource "azurerm_sql_database" "sql_server_database" {
  name                = var.database_name
  resource_group_name = var.resource_group
  location            = var.location
  server_name         = azurerm_sql_server.sql_server.name
  edition = var.sqlserver_edition

  tags = var.tags
}
