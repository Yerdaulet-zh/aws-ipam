resource "aws_vpc_ipam_pool_cidr" "dev" {
  ipam_pool_id   = aws_vpc_ipam_pool.dev.id
  netmask_length = 12
}

output "dev_pool_cidr" {
  value = aws_vpc_ipam_pool_cidr.dev.cidr
}
