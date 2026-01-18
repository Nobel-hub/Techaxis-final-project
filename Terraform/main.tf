resource "aws_instance" "app_server" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [var.security_group_id]
  availability_zone      = var.availability_zone

  tags = {
    Name = "techaxis-instance-${count.index + 1}"
  }
}

output "instance_public_ips" {
  description = "Public IPs of the EC2 instances"
  value       = aws_instance.app_server[*].public_ip
}

