# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Terraform Data Block - To Lookup Latest Ubuntu 20.04 AMI Image
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}

resource "aws_instance" "ubuntu_server" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnets["public_subnet_1"].id
  security_groups             = [aws_security_group.allow-rainbow-ssh.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.generated.key_name

  tags = {
    Name = "Ubuntu EC2 WebServer"

  }

  lifecycle {
    ignore_changes = [security_groups]
  }
}

resource "tls_private_key" "generated" {
  algorithm = "RSA"
}

resource "local_file" "private_key_pem" {
  content  = tls_private_key.generated.private_key_pem
  filename = "RainBOW_keys.pem"
}

resource "aws_key_pair" "generated" {
  key_name   = "RainBOW_keys"
  public_key = tls_private_key.generated.public_key_openssh

  lifecycle {
    ignore_changes = [key_name]
  }
}
