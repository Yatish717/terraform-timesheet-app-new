variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public subnet 1 CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "Public subnet 2 CIDR (different AZ)"
  type        = string
  default     = "10.0.4.0/24"
}

variable "private_subnet_1_cidr" {
  description = "Private subnet 1 CIDR"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_2_cidr" {
  description = "Private subnet 2 CIDR"
  type        = string
  default     = "10.0.3.0/24"
}

variable "az_1" {
  description = "First availability zone"
  type        = string
  default     = "ap-south-1a"
}

variable "az_2" {
  description = "Second availability zone"
  type        = string
  default     = "ap-south-1b"
}