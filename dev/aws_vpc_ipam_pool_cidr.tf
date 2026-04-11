resource "aws_vpc_ipam_pool_cidr" "dev_eu" {
  ipam_pool_id = aws_vpc_ipam_pool.dev_eu.id
  cidr         = "10.64.0.0/12"
}

resource "aws_vpc_ipam_pool_cidr" "dev_us" {
  ipam_pool_id = aws_vpc_ipam_pool.dev_us.id
  cidr         = "10.80.0.0/12"
}

resource "aws_vpc_ipam_pool_cidr" "dev_us" {
  ipam_pool_id = aws_vpc_ipam_pool.dev_us.id
  cidr         = "10.80.0.0/12"
}
