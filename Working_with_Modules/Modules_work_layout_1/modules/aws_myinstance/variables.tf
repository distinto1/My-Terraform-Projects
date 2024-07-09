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