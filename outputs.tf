output "virtual_machine_name" {
  value = azurerm_virtual_machine.vm.name
}

output "virtual_machine_public_ip" {
  value = azurerm_public_ip.pip.ip_address
}