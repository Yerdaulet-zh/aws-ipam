resource "aws_vpc_ipam_pool" "root" {
  address_family = "ipv4"
  ipam_scope_id  = aws_vpc_ipam.global.private_default_scope_id
  description    = "Root pool"

  tags = {
    Name = "root-10-0-0-0-8"
  }
}

resource "aws_vpc_ipam_pool" "prod" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.root.id

  description = "Production pool"

  tags = {
    env = "prod"
  }
}

resource "aws_vpc_ipam_pool" "dev" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.root.id

  tags = {
    env = "dev"
  }
}

resource "aws_vpc_ipam_pool" "staging" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.root.id

  tags = {
    env = "staging"
  }
}

resource "aws_vpc_ipam_pool" "test" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.root.id

  tags = {
    env = "test"
  }
}
