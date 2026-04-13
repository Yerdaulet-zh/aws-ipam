resource "aws_vpc_ipam_pool_cidr" "prod" {
  ipam_pool_id   = aws_vpc_ipam_pool.prod.id
  netmask_length = 16
}

output "prod_pool_cidr" {
  value = aws_vpc_ipam_pool_cidr.prod.cidr
}
