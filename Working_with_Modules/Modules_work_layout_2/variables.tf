variable "aws_vpc" {
  type    = string
  default = "172.16.0.0/16"

}

variable "aws_vpc_tag" {
  type = map(any)
  default = {
    "Name" = "sprint_1007"
  }

}

variable "subnet_cidr" {
  type    = string
  default = "172.16.10.0/24"
}

variable "tag_for_subnet" {
  type = map(any)
  default = {
    "Name" = "The_Sprint1007_subnet"
  }
}

variable "ingress_cidr_block" {
  description = "The CIDR block of the vpc"
  type        = string
  default     = "172.16.0.0/16"
}

variable "sg_nametag" {
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }
}


variable "private_ips" {
  type    = list(string)
  default = ["172.16.10.100"]

}

variable "nic_nametag" {
  type = map(any)
  default = {
    "Name" = "primary_network_interface"
  }

}

variable "ami" {
  type    = string
  default = "ami-04a81a99f5ec58529"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type = map(any)
  default = {
    "Name" = "DEV_SERVER"
  }

}