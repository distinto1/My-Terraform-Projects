
variable "vpc_id" {
    type = string
}

variable "sg_nametag" {
  type = map(any)
  default = {
    "Name" = "allow_tls"
  }
  
}