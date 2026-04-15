module "staging_regional_pools_ipv4" {
  source = "../../../modules/region"

  for_each = toset(var.regions)

  environment         = "staging"
  region              = each.key
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.staging.id

  address_family = "ipv4"

  min_netmask     = 16
  max_netmask     = 26
  default_netmask = 22
}
