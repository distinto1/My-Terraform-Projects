variable "vpc_cidr" {
  type    = string
  default = "172.16.0.0/16"
}

variable "vpc_tagname" {
  type = map(any)
  default = {
    "Name" = "sprint_july06"
  }
}

variable "subnet_cidr" {
  type    = string
  default = "172.16.0.0/24"
}

variable "subnet_nametag" {
  type = map(any)
  default = {
    "Name" = "sprint_july06"
  }
}

variable "sg_nametag" {
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }

}

variable "private_ips" {
  type    = list(string)
  default = ["172.16.0.100"]
}

variable "network_interface_nametag" {
  type = map(any)
  default = {
    "Name" = "primary_network_interface"
  }

}

variable "instance_nametag" {
  type = map(any)
  default = {
    "Name" = "PROD_SERVER"
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_ami" {
  type    = string
  default = "ami-04a81a99f5ec58529"
}

variable "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  type        = string
  default     = "172.16.0.0/16"
}


