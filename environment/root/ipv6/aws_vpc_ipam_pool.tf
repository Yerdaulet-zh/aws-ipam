resource "aws_vpc_ipam_pool" "ipv6_root" {
  description    = "IPv6 Root Pool"
  address_family = "ipv6"
  ipam_scope_id  = var.private_default_scope_id

  allocation_default_netmask_length = 56
  allocation_min_netmask_length     = 48
  allocation_max_netmask_length     = 64

  auto_import = false
  cascade     = false

  tags = {
    Name          = "ipam-ipv6-root"
    AddressFamily = "ipv6"
    Environment   = "global"
    ManagedBy     = "terraform"
  }
}

output "ipv6_root_pool_id" {
  value = aws_vpc_ipam_pool.ipv6_root.id
}

output "ipv6_root_pool_arn" {
  value = aws_vpc_ipam_pool.ipv6_root.arn
}
