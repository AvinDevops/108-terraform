terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.64.0"
        }
    }
}

provider "aws" {
    # configuration here
    region = "us-east-1"
}