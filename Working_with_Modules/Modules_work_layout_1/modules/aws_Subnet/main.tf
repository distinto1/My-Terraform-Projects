#--------------------AWS_Subnet Attached to the AWS VPC------------------------
resource "aws_subnet" "attached_subnet_1" {
  vpc_id = var.vpc_id
  cidr_block = var.subnet_cidr
  availability_zone = "us-east-1a"

  tags = var.subnet_nametag  
}



