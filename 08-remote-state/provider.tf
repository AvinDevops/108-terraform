terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.64.0"
        }
    }

    backend "s3" {
        bucket = "ak78s-remote-state"
        key = "remote-state-demo"
        region = "us-east-1"
        # dynamodb_table = "78s-locking" #it is deprecated
        use_lockfile = true
    }
}

provider "aws" {
    #configuration
    region = "us-east-1"
}