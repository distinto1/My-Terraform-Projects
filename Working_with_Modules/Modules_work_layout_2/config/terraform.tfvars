aws_vpc = "172.16.0.0/16"

aws_vpc_tag = {
  "Name" = "Dev_sprint_1007"
}

subnet_cidr = "172.16.10.0/24"

tag_for_subnet = {
  "Name" = "Dev_Sprint1007_subnet"
}

ingress_cidr_block = "172.16.0.0/16"

sg_nametag = {
  "Name" = "allow_tls"
}

private_ips = ["172.16.10.100"]

nic_nametag = {
  "Name" = "Dev_network_interface"
}

ami = "ami-04a81a99f5ec58529"

instance_type = "t2.micro"

instance_name = {
  "Name" = "DEV_SERVER"
}


