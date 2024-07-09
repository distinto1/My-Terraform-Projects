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

variable "vpc_id" {
  type = string

}