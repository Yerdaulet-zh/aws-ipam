resource "aws_vpc_ipam_organization_admin_account" "admin_account" {
  delegated_admin_account_id = var.ipam_organization_admin_account_id
}
