provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_first_instance" {
  ami = ""
  instance_type = ""
  availability_zone = ""
  
}