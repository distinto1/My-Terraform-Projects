#-------------------------AWS INSTANCE----------------------------------------------------------

resource "aws_instance" "ubuntu_instance" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.network_interface_id
    device_index         = 0
  }

  tags = var.instance_name
}

