resource "aws_vpc_ipam" "global" {
  description = "Global Enterprise IPAM"
  tier        = "advanced"

  enable_private_gua = false

  operating_regions {
    region_name = "eu-central-1"
  }

  operating_regions {
    region_name = "us-east-1"
  }

  tags = {
    Name = "global-ipam"
  }
}
