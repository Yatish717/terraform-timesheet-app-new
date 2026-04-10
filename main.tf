# =========================
# VPC Module
# =========================
module "vpc" {
  source = "./modules/vpc"
}

# =========================
# Security Group Module
# =========================
module "security_group" {
  source = "./modules/security-group"

  vpc_id = module.vpc.vpc_id
}

# =========================
# Backend (Elastic Beanstalk)
# =========================
module "beanstalk" {
  source = "./modules/beanstalk"

  # ✅ Use VPC module output
  vpc_id = module.vpc.vpc_id

  # ✅ Use PRIVATE subnets from VPC module (IMPORTANT FIX)
  private_subnet_ids = module.vpc.private_subnet_ids

  # ✅ Use Security Group module output
  security_group_id = module.security_group.security_group_id
}

# =========================
# Database (RDS)
# =========================
module "rds" {
  source = "./modules/rds"

  private_subnet_ids = module.vpc.private_subnet_ids
  security_group_id  = module.security_group.security_group_id
}

# =========================
# Frontend (S3)
# =========================
module "frontend" {
  source = "./modules/frontend"

  bucket_name = "timesheet-frontend-yatish-7865474-v1997"
}