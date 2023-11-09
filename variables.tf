# Resource Group
variable "rg1_name" {
    type = string
}
variable "rg1_location" {
    type = string
}

# Azure Container Registry
variable "acr_name" {
  type = string
}
variable "acr_sku" {
  type = string
}

# App Service Plan
variable "plan_name" {
  type = string
}
variable "plan_os_type" {
  type = string
}
variable "plan_sku" {
  type = string
}

# App Service
variable "svc_name" {
  type = string
}