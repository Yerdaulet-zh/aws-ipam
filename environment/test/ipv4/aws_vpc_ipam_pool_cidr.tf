resource "aws_vpc_ipam_pool_cidr" "test" {
  ipam_pool_id   = aws_vpc_ipam_pool.test.id
  netmask_length = 16
}

output "test_pool_cidr" {
  value = aws_vpc_ipam_pool_cidr.test.cidr
}
