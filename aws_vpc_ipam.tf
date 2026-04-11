resource "aws_vpc_ipam" "main" {
  description = "IPAM for EKS Cluster and Language Platform"
  tier        = "advanced"
  operating_regions {
    region_name = "eu-central-1"
  }
  enable_private_gua = true
  tags = {
    Name = "primary-ipam"
  }
}
