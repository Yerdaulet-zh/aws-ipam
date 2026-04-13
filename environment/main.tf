module "root" {
  source                   = "./root/ipv4"
  regions                  = local.regions
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
