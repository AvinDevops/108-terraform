locals {
    ami_id = "ami-0220d79f3f480ecf5"
    sg_id = "sg-0403a1d81692d3c96"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
}