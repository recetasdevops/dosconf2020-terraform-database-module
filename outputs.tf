output "sql_database_name" {
    value = azurerm_sql_database.sql_server_database.name
}

output "sql_server_domain_name" {
  value = azurerm_sql_server.sql_server.fully_qualified_domain_name
}

output "sql_user" {
  value = azurerm_sql_server.sql_server.administrator_login
}

output "sql_password" {
  value = azurerm_sql_server.sql_server.administrator_login_password
}

output "sql_connectionstring" {
  value = "Server=tcp:${azurerm_sql_server.sql_server.fully_qualified_domain_name},1433;Initial Catalog=${azurerm_sql_database.sql_server_database.name};Persist Security Info=False;User ID=${azurerm_sql_server.sql_server.administrator_login};Password=${azurerm_sql_server.sql_server.administrator_login_password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
}
