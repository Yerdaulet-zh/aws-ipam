resource "aws_vpc_ipam_pool" "root" {
  description    = "Root pool"
  address_family = "ipv4"
  ipam_scope_id  = var.private_default_scope_id

  auto_import = true
  cascade     = false

  tags = {
    Name        = "root-10-0-0-0-8"
    Environment = "global"
    Owner       = "platform-team"
    ManagedBy   = "terraform"
  }
}

output "root_pool_id" {
  value = aws_vpc_ipam_pool.root.id
}
