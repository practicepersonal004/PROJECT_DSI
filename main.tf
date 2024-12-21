
module "ec2" {
  source = "./modules" # Path to the module that creates the EC2 instances

  for_each = toset([ 
    "Worker - devQA",        
    "Worker - control_plane_node"
  ])

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.aws_private_key_name
  vpc_id = data.aws_vpc.existing_vpc
  subnet_id     = data.aws_subnet.existing_subnet.id
  volume_size   = var.volume_size
  sg_id         = data.aws_security_group.existing_sg.id
  deployment_unique_name = "${each.value}"
}

module "ec2_se" {
  source = "./modules" # Path to the module that creates the EC2 instances
  ami           = var.ami
  instance_type = var.dev_instance_type
  key_name      = var.aws_private_key_name
  vpc_id = data.aws_vpc.existing_vpc
  subnet_id     = data.aws_subnet.existing_subnet.id
  volume_size   = var.volume_size
  sg_id         = data.aws_security_group.existing_sg.id
  deployment_unique_name = var.woker_node_2

}