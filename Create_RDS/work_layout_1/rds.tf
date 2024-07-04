#RDS Resources
resource "aws_db_subnet_group" "mariadb_rianbow_subnets" {
  name        = "mariadb_rianbow_subnets"
  description = "Amazon RDS subnet group"
  subnet_ids  = [aws_subnet.private_subnets["private_subnet_1"].id, aws_subnet.private_subnets["private_subnet_2"].id]
}

#RDS Parameters
resource "aws_db_parameter_group" "rainbow_mariadb_parameters" {
  name        = "rainbow-mariadb-parameters"
  family      = "mariadb10.11"
  description = "MariaDB parameter group"

  parameter {
    name  = "max_allowed_packet"
    value = "16777216"
  }
}

#RDS Instance properties
resource "aws_db_instance" "rainbow_mariadb" {
  allocated_storage       = 20 # 20 GB of storage
  engine                  = "mariadb"
  engine_version          = "10.11.6"
  instance_class          = "db.t3.micro" # use micro if you want to use the free tier
  identifier              = "mariadb"
  username                = "root"       # username
  password                = "mariadb141" # password
  db_subnet_group_name    = aws_db_subnet_group.mariadb_rianbow_subnets.name
  parameter_group_name    = aws_db_parameter_group.rainbow_mariadb_parameters.name
  multi_az                = "false" # set to true to have high availability: 2 instances synchronized with each other
  vpc_security_group_ids  = [aws_security_group.allow-mariadb.id]
  storage_type            = "gp2"
  backup_retention_period = 30                                                               # how long you’re going to keep your backups
  availability_zone       = aws_subnet.private_subnets["private_subnet_1"].availability_zone # prefered AZ
  skip_final_snapshot     = true                                                             # skip final snapshot when doing terraform destroy

  tags = {
    Name = "rainbow_mariadb"
  }
}

output "rds" {
  value = aws_db_instance.rainbow_mariadb.endpoint
}

