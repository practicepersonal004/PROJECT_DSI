output "ec2_private_ip_address" {
  value = aws_instance.ec2.private_ip
}
output "ec2_instance_id" {
  value = aws_instance.ec2.id
}
/* output "elastic_ip_address" {
  value = aws_eip.eip.public_ip
} */
