output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The ID of the migrated VPC"
}

output "subnet_id" {
  value       = aws_subnet.public.id
  description = "The ID of the public subnet"
}

output "security_group_id" {
  value       = aws_security_group.web.id
  description = "The ID of the web security group"
}
