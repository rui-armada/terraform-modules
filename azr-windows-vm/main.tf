resource "azurerm_network_interface" "privinterface" {
  name                = "nic-${var.system}-${var.env}"
  location            = azurerm_resource_group.vm.location
  resource_group_name = azurerm_resource_group.vm.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnetpriv.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "windows-vm" {
  name                = "azvm-${var.system}-${var.env}"
  resource_group_name = azurerm_resource_group.vm.name
  location            = azurerm_resource_group.vm.location
  size                = var.size
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.privinterface.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

/*
data "azurerm_network_security_group" "nsg" {
  name                = "nsg-priv-paas-tst"
  resource_group_name = "rg-nwr-paas-tst"
}

resource "azurerm_network_security_rule" "example" {
  name                        = "AllowRDPtoDIMEP"
  priority                    = 1000
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "TCP"
  source_port_range           = "*"
  destination_port_range      = "3389"
  source_address_prefix       = "172.29.254.36/32"
  destination_address_prefix  = "172.29.99.132/32"
  resource_group_name         = data.azurerm_network_security_group.nsg.resource_group_name
  network_security_group_name = data.azurerm_network_security_group.nsg.name
}

resource "azurerm_network_interface_security_group_association" "nicnsg" {
  network_interface_id      = azurerm_network_interface.privinterface.id
  network_security_group_id = data.azurerm_network_security_group.nsg.id
}

resource "azurerm_recovery_services_vault" "vault" {
  name                = "dimep-vault"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.vm.name
  sku                 = "Standard"
}

resource "azurerm_backup_policy_vm" "policy" {
  name                = "dimep-policy"
  resource_group_name = azurerm_resource_group.vm.name
  recovery_vault_name = azurerm_recovery_services_vault.vault.name

  timezone = "UTC"

  backup {
    frequency = "Daily"
    time      = "23:00"
  }

  retention_daily {
    count = 10
  }

  retention_weekly {
    count    = 42
    weekdays = ["Sunday", "Wednesday", "Friday", "Saturday"]
  }

  retention_monthly {
    count    = 7
    weekdays = ["Sunday", "Wednesday"]
    weeks    = ["First", "Last"]
  }

  retention_yearly {
    count    = 77
    weekdays = ["Sunday"]
    weeks    = ["Last"]
    months   = ["January"]
  }
}

resource "azurerm_backup_protected_vm" "vm" {
  resource_group_name = azurerm_resource_group.vm.name
  recovery_vault_name = azurerm_recovery_services_vault.vault.name
  source_vm_id        = azurerm_windows_virtual_machine.dimep.id
  backup_policy_id    = azurerm_backup_policy_vm.policy.id
}*/