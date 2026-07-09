#Inputs your code expect

variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {
    Environment = "Dev"
    ManagedBy   = "Harness"
    Owner = "Shivanjali"
    Harness_Project = "Shivanjali_Playground"
  }
}