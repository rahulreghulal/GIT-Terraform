variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name for resource tagging"
  type        = string
  default     = "my-terraform-project"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "bucket_name" {
  description = "S3 bucket name (must be globally unique)"
  type        = string
  default     = "my-unique-bucket-name-12345"
}

variable "key_name" {
  description = "Name of the EC2 Key Pair for SSH access"
  type        = string
  default     = "my-key-pair"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 instances (leave empty to use Amazon Linux 2)"
  type        = string
  default     = ""
}

variable "enable_public_ip" {
  description = "Enable public IP for EC2 instances"
  type        = bool
  default     = true
}

variable "ec2_instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 2
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into EC2 instances"
  type        = string
  default     = "0.0.0.0/0"
}

variable "http_port" {
  description = "HTTP port for web traffic"
  type        = number
  default     = 80
}

variable "https_port" {
  description = "HTTPS port for web traffic"
  type        = number
  default     = 443
}

variable "ssh_port" {
  description = "SSH port"
  type        = number
  default     = 22
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Project     = "my-terraform-project"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}
