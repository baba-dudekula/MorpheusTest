# Azure authentication and subscription details
variable "subscription_id" {
  description = "Azure Subscription ID where the storage account will be created."
  type        = string
  default     = "e141110b-b951-4e62-af24-4ebea9bf92c2"
}
 
variable "tenant_id" {
  description = "Azure Active Directory Tenant ID."
  type        = string
  default    = "75888b3c-8246-455d-bf78-778c69293c92"
}
 
variable "client_id" {
  description = "Azure Service Principal Client ID."
  type        = string
  sensitive   = true
  default = "52768561-b2a1-410c-a43b-d75fb68bc4a9"
}
 
variable "client_secret" {
  description = "Azure Service Principal Client Secret."
  type        = string
  sensitive   = true
  default    = "wgk8Q~RmfDpmLAdXGFbd~CAIF-hjXdRH4wIIMaRa"
}
 
# Resource configuration
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default = "<%=customOptions.rgname%>"
}
 
variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "East US"
}
 
variable "storage_account_name" {
  description = "The name of the storage account. Must be globally unique (3–24 lowercase letters and numbers)."
  type        = string
  default     = "<%=customOptions.storageAcc%>"
}
 
variable "account_tier" {
  description = "Defines the Tier to use for this storage account (Standard or Premium)."
  type        = string
  default     = "<%=customOptions.tier%>"
}
 
variable "account_replication_type" {
  description = "Defines the replication type to use for this storage account (LRS, GRS, RAGRS, ZRS)."
  type        = string
  default     = "LRS"
}
 
variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
