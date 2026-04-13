resource "aws_vpc_ipam_pool_cidr" "this" {
  ipam_pool_id   = aws_vpc_ipam_pool.this.id
  netmask_length = var.default_netmask

  depends_on = [aws_vpc_ipam_pool.this]
}

output "pool_cidr" {
  value = aws_vpc_ipam_pool_cidr.this.cidr
}
