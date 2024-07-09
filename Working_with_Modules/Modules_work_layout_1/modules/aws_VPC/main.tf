#-----------------------------aws_VPC-------------------------------------------
resource "aws_vpc" "sprint_july06_vpc" {
  cidr_block = var.vpc_cidr

  tags = var.vpc_tagname
}

