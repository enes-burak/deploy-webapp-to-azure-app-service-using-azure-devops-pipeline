resource "azuredevops_serviceendpoint_azurecr" "example" {
  project_id                = var.project_id
  service_endpoint_name     = var.service_endpoint_name
  resource_group            = var.resource_group
  azurecr_spn_tenantid      = var.azurecr_spn_tenantid
  azurecr_name              = var.azurecr_name
  azurecr_subscription_id   = var.azurecr_subscription_id
  azurecr_subscription_name = var.azurecr_subscription_name
}
