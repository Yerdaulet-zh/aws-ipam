terraform {
  required_version = ">= 1.12.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28"
    }
  }
}

provider "aws" {
  region  = "eu-central-1"
  profile = "895587011312_AdministratorAccess"
}

provider "aws" {
  alias   = "us_east_1"
  region  = "us-east-1"
  profile = "895587011312_AdministratorAccess"
}
