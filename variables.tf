variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_access_secret_key" {
  description = "AWS Access Secret Key"
  type        = string
}

variable "aws_profile_name" {
  description = "AWS Profile Name"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}
