output "aws_instance_id" {
  value = aws_instance.debian_instance.id
}

output "aws_bitbucket_url" {
  value = aws_s3_bucket.hillel-18-dukelskyi.bucket_domain_name
}