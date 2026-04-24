output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

output "db_name" {
  value = module.rds.db_name
}

output "beanstalk_url" {
  value = module.beanstalk.environment_url
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

#  FIXED (plural)
output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "s3_bucket_name" {
  value = module.frontend.bucket_name
}

output "cloudfront_distribution_id" {
  value = module.frontend.distribution_id
}

output "cloudfront_url" {
  value = module.frontend.distribution_domain_name
}