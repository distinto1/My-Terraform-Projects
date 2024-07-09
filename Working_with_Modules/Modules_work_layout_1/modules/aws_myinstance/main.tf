#-------------------------AWS INSTANCE----------------------------------------------------------

resource "aws_instance" "my_instance" {
  ami = var.instance_ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.network_interface_id
    device_index = 0
  }

  tags = var.instance_nametag
}


