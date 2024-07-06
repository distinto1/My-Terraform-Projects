#create anew instance of the latest ubuntu 20.04 on a t2.micro VM

data "aws_ami" "cloud_cobus" {
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

resource "aws_instance" "my_example_instance" {
  ami           = data.aws_ami.cloud_cobus.id
  instance_type = var.ec2_instance_type

  tags = {
    Name = var.ec2_instance_name
  }
}