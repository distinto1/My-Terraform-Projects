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

variable "vpc_id" {
  type = string
}