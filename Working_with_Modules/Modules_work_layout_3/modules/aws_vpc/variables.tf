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