module "dev_regional_pools_ipv6" {
  source = "../../../modules/region"

  for_each = toset(var.regions)

  environment         = "dev"
  region              = each.key
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = var.root_pool_id

  address_family = "ipv6"

  min_netmask     = 56
  max_netmask     = 64
  default_netmask = 56
}
