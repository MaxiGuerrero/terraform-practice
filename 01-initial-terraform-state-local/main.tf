terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "practice-1" {
  ami = "ami-078b6331b636f8300"
  instance_type = "t2.micro"
}