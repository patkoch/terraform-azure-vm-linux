output "virtual_machine_name" {
  value = azurerm_virtual_machine.example.name
}

output "virtual_machine_public_ip" {
  value = azurerm_public_ip.pip.ip_address
}