#creating ec2 instance
resource "aws_instance" "db" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = var.tags

}

# creating security group
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }

    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Avinash"
    }
}