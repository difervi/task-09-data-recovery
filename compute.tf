resource "aws_instance" "cmtr-uad9vkoz-instance" {
  ami             = data.aws_ami.latest_amazon_linux.id
  subnet_id       = data.aws_subnets.subnets.ids[0]
  security_groups = [data.aws_security_group.SG.id]
  instance_type   = "t3.micro"
  tags = {
    Project = var.project_id
  }
}
