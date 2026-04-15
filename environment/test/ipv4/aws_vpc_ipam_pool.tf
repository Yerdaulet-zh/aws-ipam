resource "aws_vpc_ipam_pool" "test" {
  description         = "Test pool"
  address_family      = "ipv4"
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = var.root_pool_id

  allocation_min_netmask_length     = 12
  allocation_max_netmask_length     = 24
  allocation_default_netmask_length = 22

  tags = {
    Name        = "test-pool"
    Environment = "test"
    Owner       = "platform-team"
    ManagedBy   = "terraform"
  }
}

output "test_pool_id" {
  value = aws_vpc_ipam_pool.test.id
}
