resource "aws_vpc_ipam_pool" "this" {
  description         = "${var.environment} ${var.region} pool"
  address_family      = var.address_family
  ipam_scope_id       = var.ipam_scope_id
  source_ipam_pool_id = var.source_ipam_pool_id

  locale = var.region

  allocation_min_netmask_length     = var.min_netmask
  allocation_max_netmask_length     = var.max_netmask
  allocation_default_netmask_length = var.default_netmask

  tags = {
    Name          = "${var.environment}-${var.region}"
    Environment   = var.environment
    Region        = var.region
    AddressFamily = var.address_family
    Level         = "region"
    ManagedBy     = "terraform"
  }
}

output "pool_id" {
  value = aws_vpc_ipam_pool.this.id
}
