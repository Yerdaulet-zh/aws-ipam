# resource "aws_vpc_ipam_resource_discovery_association" "main" {
#   ipam_id                    = aws_vpc_ipam.global.id
#   ipam_resource_discovery_id = aws_vpc_ipam_resource_discovery.main.id

#   region = "eu-central-1"

#   tags = {
#     Environment = "Production"
#     ManagedBy   = "Terraform"
#   }
# }
