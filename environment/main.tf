# ------- IPv4 Modules-------
module "root" {
  source                   = "./root/ipv4"
  private_default_scope_id = aws_vpc_ipam.global.private_default_scope_id
}

module "prod" {
  source        = "./prod/ipv4"
  regions       = local.regions
  ipam_scope_id = aws_vpc_ipam.global.private_default_scope_id
  root_pool_id  = module.root.root_pool_id
}

module "staging" {
  source        = "./staging/ipv4"
  regions       = local.regions
  ipam_scope_id = aws_vpc_ipam.global.private_default_scope_id
  root_pool_id  = module.root.root_pool_id
}

module "dev" {
  source        = "./dev/ipv4"
  regions       = local.regions
  ipam_scope_id = aws_vpc_ipam.global.private_default_scope_id
  root_pool_id  = module.root.root_pool_id
}

module "test" {
  source        = "./test/ipv4"
  regions       = local.regions
  ipam_scope_id = aws_vpc_ipam.global.private_default_scope_id
  root_pool_id  = module.root.root_pool_id
}

# ------- IPv6 Modules-------

module "ipv6_root" {
  source                   = "./root/ipv6"
  private_default_scope_id = aws_vpc_ipam.global.private_default_scope_id
}

module "ipv6_prod" {
  source        = "./prod/ipv6"
  regions       = local.regions
  ipam_scope_id = aws_vpc_ipam.global.private_default_scope_id
  root_pool_id  = module.ipv6_root.ipv6_root_pool_id
}

module "ipv6_staging" {
  source        = "./staging/ipv6"
  regions       = local.regions
  ipam_scope_id = aws_vpc_ipam.global.private_default_scope_id
  root_pool_id  = module.ipv6_root.ipv6_root_pool_id
}

module "ipv6_dev" {
  source        = "./dev/ipv6"
  regions       = local.regions
  ipam_scope_id = aws_vpc_ipam.global.private_default_scope_id
  root_pool_id  = module.ipv6_root.ipv6_root_pool_id
}

module "ipv6_test" {
  source        = "./test/ipv6"
  regions       = local.regions
  ipam_scope_id = aws_vpc_ipam.global.private_default_scope_id
  root_pool_id  = module.ipv6_root.ipv6_root_pool_id
}
