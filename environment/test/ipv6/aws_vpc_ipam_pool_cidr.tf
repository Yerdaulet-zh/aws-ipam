resource "aws_vpc_ipam_pool_cidr" "ipv6_test" {
  ipam_pool_id   = aws_vpc_ipam_pool.ipv6_test.id
  netmask_length = 52

  depends_on = [aws_vpc_ipam_pool.ipv6_test]
}

output "test_pool_cidr" {
  value = aws_vpc_ipam_pool_cidr.ipv6_test.cidr
}
