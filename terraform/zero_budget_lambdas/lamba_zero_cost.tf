resource "aws_budgets_budget" "lambda_zero_cost_test" {
  name              = "${var.environment}-lambda-zero-cost-budget"
  budget_type       = "COST"
  limit_amount      = var.limit_amount
  limit_unit        = "USD"
  time_period_start = "2024-01-01_00:00"
  time_unit         = "MONTHLY"

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 50
    threshold_type             = "ABSOLUTE_VALUE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = var.mail_subscriber
  }

  cost_filter {
    name   = "Service"
    values = ["AWS Lambda"]
  }
}