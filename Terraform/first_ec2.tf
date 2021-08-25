terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
     region = "ap-south-1"
     access_key = ""
     secret_key = ""
}

resource "aws_instance" "myec2" {
ami = ""
instance_type = "t2.micro"
}
