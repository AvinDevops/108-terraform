# instance variables
variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
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
    default = "allows_ssh"
}

variable "sg_description" {
    default = "allowing ssh"
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