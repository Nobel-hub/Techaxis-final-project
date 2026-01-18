variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "AWS availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "m7i-flex.large"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default     = "demo-nobel-keypair"
}

variable "security_group_id" {
  description = "Security group id"
  type        = string
  default     = "sg-070c173d31078779b"
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 2
}

variable "ami_id" {
  description = "AMI ID for EC2 instance (Amazon Linux 2 recommended)"
  type        = string
  default     = "ami-0ecb62995f68bb549" # Amazon Linux 2 (us-east-1)
}

