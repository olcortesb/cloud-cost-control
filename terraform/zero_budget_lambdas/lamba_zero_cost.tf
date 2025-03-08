resource "aws_budgets_budget" "lambda_zero_cost" {
  name              = "${var.environment}-lambda-zero-cost-budget"
  budget_type       = "COST"
  limit_amount      = "0"
  limit_unit        = "USD"
  time_period_start = "2024-01-01_00:00"
  time_unit         = "MONTHLY"

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 0
    threshold_type             = "ABSOLUTE_VALUE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = [var.alert_email]
  }

  cost_filter {
    name   = "Service"
    values = ["AWS Lambda"]
  }
}

variable "alert_email" {
  description = "Email address to receive budget alerts"
  type        = string
}
