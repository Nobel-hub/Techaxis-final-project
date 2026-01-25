module "ec2" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = var.security_group_id
  availability_zone = var.availability_zone
  instance_count    = var.instance_count
}
