# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

# Azure Location
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "East US"
}

# Azure Resource Group Name
variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "AKS-Forge"
}

# Azure AKS Environment Name
variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  #default = "dev2"
}


# AKS Input Variables

# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  #default = "~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}

# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"  
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "P@ssw0rd12346789"
  description = "This variable defines the Windows admin password k8s Worker nodes"  
}
# Namespace Names
variable "dev_namespace" {
  type        = string
  description = "Name of the development namespace"
  default     = "dev"
}
variable "qa_namespace" {
  type        = string
  description = "Name of the QA namespace"
  default     = "qa"
}
variable "prod_namespace" {
  type        = string
  description = "Name of the production namespace"
  default     = "prod"
}