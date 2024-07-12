# TF file to create IAM Users and Groups

resource "aws_iam_user" "adminuser01" {
  name = "administrator_01"
}

resource "aws_iam_user" "adminuser02" {
  name = "administrator_02"
  
}

#Group TF Definition
resource "aws_iam_group" "admingroup" {
  name = "admin"
}

#Assign User to AWS GROUP
resource "aws_iam_group_membership" "admin_users" {

  name = "admin_users"
  users = [
    aws_iam_user.adminuser01.name,
    aws_iam_user.adminuser02.name,
  ]

  group = aws_iam_group.admingroup
  
}

#Policy for AWS Group

resource "aws_iam_policy_attachment" "admin_users_policy" {
  name = "admin_users_policy"
  groups = [aws_iam_group.admingroup]
  policy_arn = "arm:aws:iam:policy/AdministratorAccess"
  
}