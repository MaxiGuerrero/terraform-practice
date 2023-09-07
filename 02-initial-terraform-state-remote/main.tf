locals {
  region = "us-east-2"
}

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }

    backend "s3" {
        bucket = "terraform-tfstate-practice"
        key    = "terraform.tfstate"
        region = "us-east-2"
        encrypt = true
    }
}

provider "aws" {
  region = local.region
}

resource "aws_instance" "practice-2" {
  ami = "ami-0ccabb5f82d4c9af5"
  instance_type = "t2.micro"
}