
# AWS Monthly Budget CloudFormation Template

## Overview
```markdown
This folder contains CloudFormation templates for creating AWS Budget monthly limits with automated notifications. The budget includes alerts for both actual spending and forecasted overages.
```
## Features
- Monthly budget tracking
- $1 USD spending limit
- Multiple notification thresholds
- Email alerts for actual and forecasted spending
- Easy deployment through CloudFormation

## Prerequisites
- AWS Account
- IAM permissions to create budgets
- Valid email address for notifications

## Budget Alert Thresholds
The template configures three notification thresholds:
1. 80% of actual spend
2. 100% of actual spend
3. 100% of forecasted spend

## Template Structure

### Parameters
- `NotificationEmail`: Email address where budget alerts will be sent

### Resources
- `MonthlyBudget`: AWS Budget resource with specified limits and notifications
- Budget Name: "Monthly-Dollar-Budget"
- Currency: USD
- Time Unit: Monthly
- Budget Type: Cost

### Outputs
- `BudgetName`: Name of the created budget

## Deployment Instructions

### Using AWS Console
1. Navigate to CloudFormation in AWS Console
2. Choose "Create Stack"
3. Upload the template file
4. Fill in the required email parameter
5. Review and create the stack

### Using AWS CLI

```bash
# For general budget
aws cloudformation create-stack \
  --stack-name monthly-dollar-budget \
  --template-body file://monthly-budget.yaml \
  --parameters ParameterKey=NotificationEmail,ParameterValue=your.email@example.com
```

```bash
# For lambda services budget
aws cloudformation create-stack \
  --stack-name lambda-dollar-budget \
  --template-body file://lambda-monthly-budget.yaml \
  --parameters ParameterKey=NotificationEmail,ParameterValue=your.email@example.com
```

```bash
# For ec2 services budget
aws cloudformation create-stack \
  --stack-name lambda-dollar-budget \
  --template-body file://cloudformations/ec2-monthly-budget.yaml \
  --parameters ParameterKey=NotificationEmail,ParameterValue=your.email@example.com
```