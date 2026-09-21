data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}
data "aws_subnets" "subnets" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_name]
  }
}
data "aws_security_group" "SG" {
  filter {
    name   = "tag:Name"
    values = [var.security_group_name]
  }
}
data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}