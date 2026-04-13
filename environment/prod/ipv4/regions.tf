module "prod_regional_pools" {
  source = "../../../modules/ipv4/region"

  for_each = toset(var.regions)

  environment         = "prod"
  region              = each.key
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.prod.id
}
