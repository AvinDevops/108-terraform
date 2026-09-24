resource "aws_instance" "db" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0403a1d81692d3c96"]
    tags = {
        Name = "DB"
    }
}