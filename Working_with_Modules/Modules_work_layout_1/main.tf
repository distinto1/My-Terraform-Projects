module "vpc" {
  source = "../modules/aws_VPC"
  vpc_cidr = var.vpc_cidr
  vpc_tagname = var.vpc_tagname
}

module "subnet" {
  source = "./modules/aws_subnet"
  vpc_id = var.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_nametag = var.subnet_nametag

}

module "security_group" {
  source = "./modules/aws_securitygroup" 
  vpc_id = var.vpc_id 
  sg_nametag = var.sg_nametag

}

module "nic" {
  source = "./modules/aws_nic"
  subnet_id = var.subnet_id
  private_ips = var.private_ips
  network_interface_nametag = var.network_interface_nametag
}

module "my_instance" {
  source = "./modules/aws_myinstance"
  instance_ami = var.instance_ami
  instance_type = var.instance_type
  network_interface_id = var.network_interface_id
  instance_nametag = var.instance_nametag
}

