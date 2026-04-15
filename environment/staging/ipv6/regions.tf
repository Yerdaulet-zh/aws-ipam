module "staging_regional_pools_ipv6" {
  source = "../../../modules/region"

  for_each = toset(var.regions)

  environment         = "staging"
  region              = each.key
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.ipv6_staging.id

  address_family = "ipv6"

  pool_cidr_netmask_length = 48

  min_netmask     = 48
  max_netmask     = 64
  default_netmask = 48
  depends_on      = [aws_vpc_ipam_pool.ipv6_staging]
}
