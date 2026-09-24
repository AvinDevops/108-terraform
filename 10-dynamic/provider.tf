terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.64.0"
        }
    }

    backend "s3" {
        bucket = "ak78s-remote-state"
        key = "dynamic"
        region = "us-east-1"
        use_lockfile = true
    }
}

provider "aws" {
    region = "us-east-1"
}