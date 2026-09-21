data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["cmtr-uad9vkoz-vpc"]
  }
}
data "aws_subnets" "subnets" {
  filter {
    name   = "tag:Name"
    values = ["cmtr-uad9vkoz-public-subnet-1"]
  }
}
data "aws_security_group" "SG" {
  filter {
    name   = "tag:Name"
    values = ["cmtr-uad9vkoz-sg"]
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