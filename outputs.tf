output "s3_bucket_id" {
  description = "S3 Bucket ID"
  value       = aws_s3_bucket.main.id
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "load_balancer_dns" {
  description = "Load Balancer DNS Name"
  value       = aws_lb.main.dns_name
}

output "ec2_public_ip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.web.public_ip
}

output "ec2_public_dns" {
  description = "EC2 Instance Public DNS"
  value       = aws_instance.web.public_dns
}
