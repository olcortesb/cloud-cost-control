# Cloud Cost Control

This project contains Terraform configurations to help monitor and control AWS cloud costs through AWS Budgets.

## Overview

This infrastructure-as-code project sets up AWS budget alerts to monitor costs, specifically focusing on maintaining zero-cost controls for AWS Lambda services.

## Prerequisites

- Terraform installed (version 0.12 or later)
- AWS CLI configured with appropriate credentials
- AWS account with permissions to create and manage budgets

## Project Structure

```
cloud-cost-control/
├── README.md
├── lambda_zero_cost.tf
├── lambda_budget.tf
├── variables.tf
└── terraform.tfvars (you need to create this, Use terraform.tfvars.sample as a reference.)
```

## Configuration Files

### lambda_zero_cost.tf

Contains the main budget configuration for monitoring Lambda costs with zero-cost threshold alerts. This configuration sets up:

- Zero-cost threshold for AWS Lambda services
- Email notifications when costs exceed $0

### lambda_budget.tf

Additional budget configuration specifically tailored for AWS Lambda service monitoring, with similar settings to ensure zero-cost control:

- Zero-cost threshold monitoring
- Email alerts for any cost occurrence

### variables.tf

Defines the variables used across the Terraform configurations, including:

- environment: The deployment environment (dev, staging, prod)
- alert_email: Email address for budget notifications

## Usage

1. Clone the repository
2. Create a `terraform.tfvars` file with your configuration( Used terraform.tfvars.sample as reference):

environment = "dev"
alert_email = "<your-email@example.com>"

3. Initialize Terraform:

```sh
terraform init
````

4. Review the planned changes:

```sh
terraform plan
```

5. Apply the configuration:

```sh
terraform apply
```

## Budget Configurations

The project sets up multiple budgets for comprehensive cost control:

- Lambda Zero-Cost Budgets: Multiple monitors for AWS Lambda service costs
  - Triggers alerts when costs exceed `var.limit_amount`
  - Sends notifications to specified email
  - Evaluates costs monthly
  - Uses cost filters specifically for AWS Lambda service

## Variables

| Name | Description | Type | Required |
|------|-------------|------|----------|
| alert_email | Email address to receive budget alerts | string | yes |
| environment | Deployment environment identifier | string | yes |

## Notifications

Budget notifications are configured to:

- Trigger when actual spending exceeds the threshold
- Send email alerts to specified address
- Monitor costs in real-time
- Use GREATER_THAN comparison operator
- Track ACTUAL costs against threshold

## Maintenance

Remember to:

- Regularly verify email notifications are being received
- Update the alert_email if contact information changes
- Review and adjust budgets as needed
- Monitor the effectiveness of multiple budget alerts

## ⚠️ Security Considerations

- Keep your `terraform.tfvars` file secure and never commit it to version control
- Ensure AWS credentials are properly secured
- Regularly rotate AWS access keys or don't use them
- Use appropriate IAM roles and permissions
- Protect the email address used for notifications