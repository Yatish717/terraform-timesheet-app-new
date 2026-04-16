output "bucket_name" {
  value = aws_s3_bucket.frontend_bucket.bucket
}

output "distribution_id" {
  value = aws_cloudfront_distribution.frontend_cdn.id
}

output "distribution_domain_name" {
  value = aws_cloudfront_distribution.frontend_cdn.domain_name
}