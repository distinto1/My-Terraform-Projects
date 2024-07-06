provider "aws" {
  region = "us-east-1"
}

#-----------------------------aws_VPC-------------------------------------------
resource "aws_vpc" "sprint_july06_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "sprint_july06"
  }
  
}

#--------------------AWS_Subnet Attached to the AWS VPC------------------------

resource "aws_subnet" "attached_subnet_1" {
  vpc_id = aws_vpc.sprint_july06_vpc.id
  cidr_block = "172.16.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "sprint_july06"

  }
    
}