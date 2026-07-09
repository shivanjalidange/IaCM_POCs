#Info you want to see after deployment

output "bucket_name" {
  value       = aws_s3_bucket.demo_poc1_bucket.bucket #.id aso fetches bucket_name
  description = "The name/ID of the bucket"
}

output "bucket_arn" {
  value       = aws_s3_bucket.demo_poc1_bucket.arn
  description = "The ARN of the bucket"
}