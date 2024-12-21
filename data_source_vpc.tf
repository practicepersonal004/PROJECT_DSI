# Data sources to fetch existing resources
data "aws_vpc" "existing_vpc" {
  id = var.vpc_id
}

data "aws_subnet" "existing_subnet" {
  id = var.subnet_id
}

data "aws_security_group" "existing_sg" {
  id = var.security_group_id
}
