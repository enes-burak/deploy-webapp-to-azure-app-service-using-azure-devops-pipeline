module "rg1" {
  source = "./modules/resource_group"
  name = var.rg1_name
  location = var.rg1_location
}

module "acr" {
  source = "./modules/container_registry"
  name = var.acr_name
  resource_group_name = module.rg1.name
  location = module.rg1.location
  sku = var.acr_sku
}

module "app_svc_plan" {
  source = "./modules/app_service_plan"
  name = var.plan_name
  resource_group_name = module.rg1.name
  location = module.rg1.location
  os_type = var.plan_os_type
  sku_name = var.plan_sku
}

