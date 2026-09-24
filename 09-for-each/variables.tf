## ec2 variables ##
variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "True"
    }
}

## sg variables ##
variable "sg_name" {
    default = "allow ssh"
}

variable "sg_description" {
    default = "allowing ssh only"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

## r53 variables ##
variable "zone_id" {
    default = "Z0957062IYWI7K7NAQU6"
}

variable "domain_name" {
    default = "avinexpense.shop"
}