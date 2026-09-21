variable "aws_region" {
  type        = string
  description = "aws region"
}
variable "project_id" {
  type        = string
  description = "Project ID use for tagging"
}
variable "vpc_name" {
  type        = string
  description = "VPC Name"
}
variable "public_subnet_name" {
  type        = string
  description = "Public subnet name"
}
variable "security_group_name" {
  type        = string
  description = "SG name"
}