resource "aws_vpc_ipam_pool_cidr" "ipv6_staging" {
  ipam_pool_id   = aws_vpc_ipam_pool.ipv6_staging.id
  netmask_length = 44

  depends_on = [aws_vpc_ipam_pool.ipv6_staging]
}

output "staging_pool_cidr" {
  value = aws_vpc_ipam_pool_cidr.ipv6_staging.cidr
}
