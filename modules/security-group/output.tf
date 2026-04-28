output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.main_sg.id
}

output "alb_security_group_id" {
  description = "ALB Security Group ID"
  value       = aws_security_group.alb_sg.id
}