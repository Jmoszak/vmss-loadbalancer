#location variable - east us
variable "location" {
 description = "The location where resources will be created"
 default     = "East Us"
 type = string
}

#resource group name - VMSS
variable "resource_group_name" {
 description = "The name of the resource group in which the resources will be created"
 default     = "VMSS"
 type = string
}

#Not sure how to tie in availability zones
locals {
  regions_with_availability_zones = ["eastus"] 
  zones = contains(local.regions_with_availability_zones, var.location) ? list("1","2","3") : null
}

#virtual network for resources - VMSSnet
variable "azurerm_virtual_network" {
 description = "The name of the virtual network in which the resources will be created"
 default     = "VMSSnet"
 type = string
}

#Virtual Machine ScaleSet - VMScaleSet
variable "azurerm_virtual_machine_scale_set" {
 description = "The name of the virtual network in which the resources will be created"
 default     = "VMScaleSet"
 type = string
}
#availability zones
variable "availability_zone_names" {
 description = "The name of the virtual network in which the resources will be created"
 default     = ["eastus"]
 type    = list(string)
}