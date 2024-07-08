#-----------------------AWS NIC Attached to AWS INSTANCE--------------------------------------

resource "aws_network_interface" "foo" {
  subnet_id = aws_subnet.attached_subnet_1.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
  
}
