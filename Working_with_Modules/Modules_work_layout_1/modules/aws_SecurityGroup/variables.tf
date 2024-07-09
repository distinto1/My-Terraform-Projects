
variable "vpc_id" {
  type = string
}

variable "sg_nametag" {
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }
}


variable "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  type        = string
}