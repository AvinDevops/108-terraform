# instance tags
#1.cmd line args
#2.tfvars
#3.env variables
#4.default variable value
variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "RHEL 9 ami id"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
}

# security group tags
variable "sg_name" {
    default = "allow_ssh"
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
