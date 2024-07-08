#-----------------------------aws_VPC-------------------------------------------
resource "aws_vpc" "sprint_july06_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "sprint_july06"
  }
  
}