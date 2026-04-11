resource "aws_vpc_ipam_pool_cidr" "root" {
  ipam_pool_id = aws_vpc_ipam_pool.root.id
  cidr         = "10.0.0.0/8"
}

resource "aws_vpc_ipam_pool_cidr" "prod" {
  ipam_pool_id = aws_vpc_ipam_pool.prod.id
  cidr         = "10.0.0.0/10"
}

resource "aws_vpc_ipam_pool_cidr" "dev" {
  ipam_pool_id = aws_vpc_ipam_pool.dev.id
  cidr         = "10.64.0.0/10"
}

resource "aws_vpc_ipam_pool_cidr" "staging" {
  ipam_pool_id = aws_vpc_ipam_pool.staging.id
  cidr         = "10.128.0.0/10"
}

resource "aws_vpc_ipam_pool_cidr" "test" {
  ipam_pool_id = aws_vpc_ipam_pool.test.id
  cidr         = "10.192.0.0/10"
}
