resource "aws_vpc_ipam_pool_cidr" "staging" {
  ipam_pool_id = aws_vpc_ipam_pool.staging.id
  cidr         = "10.128.0.0/10"
}
