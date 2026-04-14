resource "aws_vpc_ipam_pool_cidr" "ipv6_root" {
  ipam_pool_id = aws_vpc_ipam_pool.ipv6_root.id
  cidr         = "fd00:abcd:1234::/48"

  depends_on = [aws_vpc_ipam_pool.ipv6_root]
}
