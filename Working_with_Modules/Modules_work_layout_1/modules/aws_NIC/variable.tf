variable "subnet_id" {

  type = string
}

variable "private_ips" {
  type    = list(string)
  default = ["172.16.0.100"]
}

variable "network_interface_nametag" {
  type = map(any)
  default = {
    "Name" = "primary_network_interface"
  }

}