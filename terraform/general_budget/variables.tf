variable "platform_name" {
  type    = string
  default = "cost-control"
}

variable "environment" {
  type    = string
  default = "test"
}

variable "limit_amount" {
  type        = string
  default     = "3"
  description = "Value in dollars of the limit amount per month"
  validation {
    condition     = can(regex("^[0-9]+\\.?[0-9]*$", var.limit_amount))
    error_message = "The value must be a number."
  }
}

variable "mail_subscriber" {
  type    = list(string)
  default = ["yourmail@some.com"]
}

variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

variable "s3-bucket" {
  type    = string
  default = "bucket-name"
}