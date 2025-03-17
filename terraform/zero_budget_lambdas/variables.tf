variable "platform_name" {
  type    = string
  default = "cost-control"
  validation {
    condition     = can(regex("^[a-z0-9\\-]+$", var.platform_name))
    error_message = "The value must be a valid platform name."
  }
}

variable "environment" {
  type    = string
  default = "test"
  validation {
    condition     = can(regex("^[a-z0-9\\-]+$", var.environment))
    error_message = "The value must be a valid environment name."
  }
}

variable "limit_amount" {
  type        = string
  default     = "0.01"
  description = "Value in dollars of the limit amount per month"
  validation {
    condition     = can(regex("^[0-9]+\\.?[0-9]*$", var.limit_amount))
    error_message = "The value must be a number."
  }
}

variable "mail_subscriber" {
  type    = list(string)
  default = ["yourmail@some.com"]
  validation {
    condition = alltrue([
      for i in var.mail_subscriber : can(regex("^[a-z0-9\\._\\-]+\\@([a-z0-9\\-]+\\.)+[a-z]{2,4}$", i))
    ])
    error_message = "The value must be a valid email address."
  }
}

variable "aws_region" {
  type    = string
  default = "eu-central-1"
  validation {
    condition     = can(regex("^[a-z0-9\\-]+$", var.aws_region))
    error_message = "The value must be a valid AWS region name."
  }
}

variable "s3-bucket" {
  type    = string
  default = "bucket-name"
  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9\\-]*[a-z0-9]$", var.s3-bucket))
    error_message = "The value must be a valid bucket name."
  }
}

variable "threshold" {
  type    = number
  default = 50
  validation {
    condition     = var.threshold <= 100 && var.threshold >= 0
    error_message = "The threshold must be a number between 0 and 100."
  }
}
