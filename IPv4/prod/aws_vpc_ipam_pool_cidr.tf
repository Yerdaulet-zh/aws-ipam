resource "aws_vpc_ipam_pool_cidr" "prod_eu" {
  ipam_pool_id = aws_vpc_ipam_pool.prod_eu.id
  cidr         = "10.0.0.0/12"
}

resource "aws_vpc_ipam_pool_cidr" "prod_us" {
  ipam_pool_id = aws_vpc_ipam_pool.prod_us.id
  cidr         = "10.16.0.0/12"
}

resource "aws_vpc_ipam_pool_cidr" "prod_ap" {
  ipam_pool_id = aws_vpc_ipam_pool.prod_ap.id
  cidr         = "10.32.0.0/12"
}
