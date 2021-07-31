terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
#provider "aws" {
#region = "ap-south-1"
#}

resource "aws_vpc" "Terraform_VPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Terracreated"
	Env = "lower"
	Date "01-08-2021"
  }
}