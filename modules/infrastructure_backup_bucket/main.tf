resource "aws_s3_bucket" "infrastructure_backup_bucket" {
  bucket        = var.bucket_name
  force_destroy = true

  versioning {
    enabled = true
  }

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "vpc"
    "Project"         = "aws_nat_gateway"
    "Name"            = var.bucket_name
  }
}
