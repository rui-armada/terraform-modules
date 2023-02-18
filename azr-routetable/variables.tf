variable "resource_group_location" {
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "route_table_name_prefix" {
  default     = "rt"
  description = "Prefix of the route table name."
}

variable "env" {
  description = "environment name (tst for nonprod and prd for prod)"
}

variable "name" {
  description = "name of route table"
}

variable "route_name" {
  description = "route name"
}

variable "address_prefix" {
  description = "address"
}

variable "next_hop_type" {
  description = "hop type"
}

variable "next_hop_in_ip_address" {
  description = "next hop in ip address"
}

