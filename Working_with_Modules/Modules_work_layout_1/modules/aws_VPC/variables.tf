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