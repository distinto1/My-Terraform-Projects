#-----------------------------aws_VPC-------------------------------------------
resource "aws_vpc" "sprint_1007_vpc" {
  cidr_block = var.aws_vpc

  tags = var.aws_vpc_tag

}

