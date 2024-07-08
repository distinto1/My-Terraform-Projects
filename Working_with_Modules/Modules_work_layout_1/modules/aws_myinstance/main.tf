#-------------------------AWS INSTANCE----------------------------------------------------------

resource "aws_instance" "my_instance" {
  ami =   
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index = 0
  }

  tags = {
    "Name" = "PRO-SERVER"
  }
}
