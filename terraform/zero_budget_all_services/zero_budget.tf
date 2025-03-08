# AWS Budget Configuration
resource "aws_budgets_budget" "zero_monthly_budget" {
  name         = "zero_monthly_budget"
  budget_type  = "COST"
  limit_amount = var.limit_amount # Set the budget limit to XXX USD
  limit_unit   = "USD"
  time_unit    = "MONTHLY"

  #   cost_filters = {
  #     "Service" = "Amazon Elastic Compute Cloud - Compute"
  #   }

  # Notification settings
  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = var.threshold
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = var.mail_subscriber
  }
}
