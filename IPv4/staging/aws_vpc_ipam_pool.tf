resource "aws_vpc_ipam_pool" "staging" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.staging.id
  locale              = "eu-central-1"
}
