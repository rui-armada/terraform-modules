variable "system" {
  type    = string
}

variable "sqlversion" {
  type    = string
}

variable "db-name" {
  type    = string
}

variable "resource_group_location" {
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "sqlserver_name_prefix" {
  default     = "sqlserver"
  description = "Prefix of the route table name."
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "env" {
  description = "environment name (tst for nonprod and prd for prod)"
}

variable "enable_firewall_rules" {
  description = "Manage an Azure SQL Firewall Rule"
  default     = false
}

variable "firewall_rules" {
  description = "Range of IP addresses to allow firewall connections."
  type = list(object({
    name             = string
    start_ip_address = string
    end_ip_address   = string
  }))
  default = []
}

