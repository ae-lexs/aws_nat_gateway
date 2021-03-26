output "infrastructure_backup_bucket_id" {
  description = "ID of the infrastructure backup bucket"
  value       = aws_s3_bucket.infrastructure_backup_bucket.id
}
