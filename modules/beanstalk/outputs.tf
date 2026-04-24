output "environment_url" {
  description = "Beanstalk CNAME URL"
  value       = aws_elastic_beanstalk_environment.env.cname
}

output "application_name" {
  value = aws_elastic_beanstalk_application.app.name
}

output "environment_name" {
  value = aws_elastic_beanstalk_environment.env.name
}