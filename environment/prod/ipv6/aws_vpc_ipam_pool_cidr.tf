resource "aws_vpc_ipam_pool_cidr" "ipv6_prod" {
  ipam_pool_id   = aws_vpc_ipam_pool.ipv6_prod.id
  netmask_length = 52

  depends_on = [aws_vpc_ipam_pool.ipv6_prod]
}

output "prod_pool_cidr" {
  value = aws_vpc_ipam_pool_cidr.ipv6_prod.cidr
}
