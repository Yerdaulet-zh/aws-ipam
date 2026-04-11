resource "aws_vpc_ipam_pool" "prod_eu" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.prod.id
  locale              = "eu-central-1"

  tags = {
    env    = "prod"
    region = "eu-central-1"
  }
}


resource "aws_vpc_ipam_pool" "prod_us" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.prod.id
  locale              = "us-east-1"

  tags = {
    env    = "prod"
    region = "us-east-1"
  }
}
resource "aws_vpc_ipam_pool" "prod_ap" {
  address_family      = "ipv4"
  ipam_scope_id       = aws_vpc_ipam.global.private_default_scope_id
  source_ipam_pool_id = aws_vpc_ipam_pool.prod.id
  locale              = "ap-south-1"

  tags = {
    env    = "prod"
    region = "ap-south-1"
  }
}
