resource "aws_vpc_ipam_pool_cidr" "staging" {
  ipam_pool_id   = aws_vpc_ipam_pool.staging.id
  netmask_length = 16
}

output "staging_pool_cidr" {
  value = aws_vpc_ipam_pool_cidr.staging.cidr
}
