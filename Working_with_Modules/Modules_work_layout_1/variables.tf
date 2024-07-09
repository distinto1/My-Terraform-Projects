variable "vpc_cidr" {
  type = string
  default = "172.16.0.0/16"
}

variable "vpc_tagname" {
  type = map(any)
  default = {
    "Name" = "sprint_july06"
  } 
}

variable "subnet_cidr" {
  type = string
  default = "172.16.0.0/24"
}

variable "subnet_nametag" {
  type = map(any)
  default = {
    "Name" = "sprint_july06"
  }
}

variable "vpc_id" {
  type = string 
}

variable "vpc_id" {
    type = string
}

variable "sg_nametag" {
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }
  
}

variable "subnet_id" {
  type = string 
}

variable "private_ips" {
  type = list(string)
  default = ["172.16.10.100"] 
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
    "Name"= "PROD_SERVER"
  } 
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_ami" {
  type = string
  default = "023d39cbc16614424"
}

variable "network_interface_id" {
  type = string 
}

