resource "aws_security_group" "allow_ports" {
    name = "allow_ports"
    description = "allow ports 22,80,8080,3306 access"

    # ingress {
    #     from_port = 22
    #     to_port = 22
    #     protocol = "tcp"
    # }

    # ingress {
    #     from_port = 80
    #     to_port = 80
    #     protocol = "tcp"
    # }

    # ingress {
    #     from_port = 8080
    #     to_port = 8080
    #     protocol = "tcp"
    # }

    # ingress {
    #     from_port = 3306
    #     to_port = 3306
    #     protocol = "tcp"
    # }

    dynamic ingress {
        for_each = var.inbound_rules
        content{
            from_port = ingress.value["port"]
            to_port = ingress.value["port"]
            protocol = ingress.value["protocol"]
            cidr_blocks = ingress.value["cidr_blocks"]
        }
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allowing all ports"
        Terraform = "True"
    }
}