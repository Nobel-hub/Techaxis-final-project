resource "aws_instance" "this" {
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

