resource "aws_vpc_ipam_pool" "dev" {
  description         = "Development pool"
  address_family      = "ipv4"
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = var.root_pool_id

  allocation_min_netmask_length     = 12
  allocation_max_netmask_length     = 22
  allocation_default_netmask_length = 20

  tags = {
    Name        = "dev-pool"
    Environment = "dev"
    Owner       = "platform-team"
    ManagedBy   = "terraform"
  }
}

output "dev_pool_id" {
  value = aws_vpc_ipam_pool.dev.id
}
