module "dev_regional_pools_ipv6" {
  source = "../../../modules/region"

  for_each = toset(var.regions)

  environment         = "dev"
  region              = each.key
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.ipv6_dev.id

  address_family = "ipv6"

  min_netmask     = 56
  max_netmask     = 64
  default_netmask = 64
  depends_on      = [aws_vpc_ipam_pool.ipv6_dev]
}
