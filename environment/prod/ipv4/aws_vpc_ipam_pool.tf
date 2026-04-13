resource "aws_vpc_ipam_pool" "prod" {
  description         = "Production pool"
  address_family      = "ipv4"
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = var.root_pool_id

  allocation_min_netmask_length     = 16
  allocation_max_netmask_length     = 20
  allocation_default_netmask_length = 16

  tags = {
    Name        = "prod-pool"
    Environment = "prod"
    Owner       = "platform-team"
    ManagedBy   = "terraform"
  }
}

output "prod_pool_id" {
  value = aws_vpc_ipam_pool.prod.id
}
