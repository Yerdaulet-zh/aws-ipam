resource "aws_vpc_ipam_pool" "dev_eu" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.dev.id
  locale              = "eu-central-1"
}

resource "aws_vpc_ipam_pool" "dev_us" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.dev.id
  locale              = "us-east-1"
}

resource "aws_vpc_ipam_pool" "dev_us" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.dev.id
  locale              = "us-east-1"
}
