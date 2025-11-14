output "ec2_instance_ids" {
  description = "EC2 Instance IDs"
  value       = aws_instance.web[*].id
}

output "ec2_public_ips" {
  description = "EC2 Instance Public IPs"
  value       = aws_instance.web[*].public_ip
}
