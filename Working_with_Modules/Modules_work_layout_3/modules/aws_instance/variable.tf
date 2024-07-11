variable "ami" {
  type    = string
  default = "ami-04a81a99f5ec58529"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "network_interface_id" {
  type = string
}

variable "instance_name" {
  type = map(any)
  default = {
    "Name" = "DEV_SERVER"
  }

}