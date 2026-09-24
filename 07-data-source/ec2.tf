resource "aws_instance" "backend" {
    ami = data.aws_ami.ami_info.id
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0403a1d81692d3c96"]

    tags = {
        Name = "Backend"
    }
}