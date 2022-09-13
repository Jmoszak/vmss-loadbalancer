#VMSS public IP configuration
output "vmss_public_ip" {
    value = azurerm_public_ip.vmss.fqdn
}

#Where to expose the load balancer
variable "application_port" {
   description = "The port that you want to expose to the external load balancer"
   default     = 80
}

#username
variable "admin_user" {
   description = "User name to use as the admin account on the VMs that will be part of the VM Scale Set"
   default     = "jadmin"
}

#password
variable "admin_password" {
   description = "Default password for admin account"
   default     = "Password1234?"
}