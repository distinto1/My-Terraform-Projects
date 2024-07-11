output "vpc_id" {
  value = aws_vpc.sprint_1007_vpc.id
}

output "ingress_cidr_block" {
  value = aws_vpc.sprint_1007_vpc.cidr_block
}