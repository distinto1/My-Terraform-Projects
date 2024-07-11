module "vpc" {
  source      = "./modules/aws_vpc"
  aws_vpc     = var.aws_vpc
  aws_vpc_tag = var.aws_vpc_tag
}

module "subnet" {
  source         = "./modules/aws_subnet"
  vpc_id         = module.vpc.vpc_id
  subnet_cidr    = var.subnet_cidr
  tag_for_subnet = var.tag_for_subnet

}

module "aws_sg" {
  source             = "./modules/aws_sg"
  vpc_id             = module.vpc.vpc_id
  ingress_cidr_block = var.ingress_cidr_block
  sg_nametag         = var.sg_nametag

}

module "aws_nic" {
  source      = "./modules/aws_nic"
  subnet_id   = module.subnet.subnet_id
  private_ips = var.private_ips
  nic_nametag = var.nic_nametag

}

module "instance" {
  source               = "./modules/aws_instance"
  ami                  = var.ami
  instance_type        = var.instance_type
  network_interface_id = module.aws_nic.network_interface_id
  instance_name        = var.instance_name

}

module "instance_east_2" {
  source = "./modules/aws_instance"
  providers = {
    aws = aws.east-2
  }
  ami                  = var.ami
  instance_type        = var.instance_type
  network_interface_id = module.aws_nic.network_interface_id
  instance_name        = var.instance_name

}




