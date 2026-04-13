resource "aws_vpc_ipam_pool" "ipv6_staging" {
  description         = "Staging pool"
  address_family      = "ipv6"
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = var.root_pool_id

  allocation_min_netmask_length     = 56
  allocation_max_netmask_length     = 64
  allocation_default_netmask_length = 56

  tags = {
    Name        = "staging-pool-ipv6"
    Environment = "staging"
    Owner       = "platform-team"
    ManagedBy   = "terraform"
  }
}

output "staging_pool_id" {
  value = aws_vpc_ipam_pool.ipv6_staging.id
}
