variable "subscription_id" {
  description = "Azure Subscription ID"
  type = string
}

variable "resource_group" {
  description = "Name of the Resource Group"
  type = string
  
}

variable "location" {
  description = "Azure Region for the resources"
  type = string
  default = "Central India"
  
}