# creating ec2 instance
resource "aws_instance" "db" {
    # count = 3
    count = length(var.instance_names)
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
        Name = var.instance_names[count.index]
    }
}

# creating security group
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description
    
    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Avin"
    }
}

