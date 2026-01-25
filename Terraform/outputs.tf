output "instance_public_ips" {
  description = "Public IPs of the EC2 instances"
  value       = module.ec2.public_ips
}

