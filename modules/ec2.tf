resource "aws_instance" "ec2" {

  ami                    = var.ami
  source_dest_check      = false
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_id]
  root_block_device {
    volume_size           = var.volume_size
    delete_on_termination = true
  }
  tags = {
    Name         = "${var.deployment_unique_name}"
    deployment   = var.deployment_unique_name
    iac = "terraform"
  }
}

