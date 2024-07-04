provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_first_instance" {
  ami                    = "ami-04b70fa74e45c3917"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "fixed_keys"
  vpc_security_group_ids = ["sg-0058243c39be91b77"]

  tags = {
    Name = "my_first_instance"
  }

}