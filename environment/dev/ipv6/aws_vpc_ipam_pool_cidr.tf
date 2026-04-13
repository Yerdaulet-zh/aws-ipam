resource "aws_vpc_ipam_pool_cidr" "ipv6_dev" {
  ipam_pool_id   = aws_vpc_ipam_pool.ipv6_dev.id
  netmask_length = 48

  depends_on = [aws_vpc_ipam_pool.ipv6_dev]
}

output "dev_pool_cidr" {
  value = aws_vpc_ipam_pool_cidr.ipv6_dev.cidr
}
