terraform {
    required_version = ">= 1.0.0"

backend "s3" {
        bucket         = "streamflixbackend"
        key            = "dev/terraform.tfstate"
        region         = "us-east-1"
        encrypt        = true
        use_lockfile   = true
    }
    required_providers {
        aws = {
        
            
        }
    }
}
provider "aws" {
    region = var.aws_region
}