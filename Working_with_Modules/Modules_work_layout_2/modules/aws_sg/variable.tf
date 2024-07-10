variable "vpc_id" {
  type = string
}

variable "ingress_cidr_block" {
  description = "The CIDR block of the vpc"
  type        = string

}

variable "sg_nametag" {
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }

}