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