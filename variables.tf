variable "aws_credentials_file_path" {
  description = "Path of the AWS Credentials file"
  type        = string
  default     = "~/.aws/credentials"
}

variable "aws_profile_name" {
  description = "Name of one of the configured profiles in the AWS Credentials file"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}
