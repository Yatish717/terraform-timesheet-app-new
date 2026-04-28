variable "vpc_id" {
  description = "VPC ID for Beanstalk"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for Beanstalk"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "Public subnet IDs for ALB"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security Group ID for Beanstalk"
  type        = string
}

variable "alb_security_group_id" {
  description = "Security Group ID for ALB"
  type        = string
}