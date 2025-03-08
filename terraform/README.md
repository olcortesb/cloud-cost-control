# Guide to Getting Started with Cloud and Terraform

## 🌟 Introduction to Terraform
Terraform is an Infrastructure as Code (IaC) tool that allows you to define, provision, and manage cloud infrastructure declaratively. With Terraform, you can create and manage resources across different cloud providers such as AWS, Azure, and Google Cloud.

## 📚 Prerequisites
Before you begin, make sure you have the following:

1. **Terraform installed**: You can download it from [HashiCorp Terraform](https://developer.hashicorp.com/terraform/downloads)
2. **Cloud provider account**: (AWS, Azure, Google Cloud, etc.)
3. **Configured credentials**: Terraform needs permissions to deploy resources in the cloud.

## 🌐 Installing Terraform

### Windows
1. Download the Terraform binary from the official site.
2. Extract the binary and add it to the system `PATH`.
3. Verify the installation with:
   ```sh
   terraform version
   ```

### macOS/Linux
1. Use Homebrew on macOS:
   ```sh
   brew tap hashicorp/tap
   brew install hashicorp/tap/terraform
   ```
2. On Linux, use `wget` and move the binary to `/usr/local/bin`:
   ```sh
   wget https://releases.hashicorp.com/terraform/X.Y.Z/terraform_X.Y.Z_linux_amd64.zip
   unzip terraform_X.Y.Z_linux_amd64.zip
   sudo mv terraform /usr/local/bin/
   ```

## 🛠️ Getting Started with Terraform

### 1. Initialize a Terraform Project
Create a folder for your project and inside it, a `main.tf` file with the desired infrastructure configuration.

```sh
mkdir my-terraform-project
cd my-terraform-project
```

### 2. Write the Configuration
Example of a `main.tf` file to define a budget in AWS:

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_budgets_budget" "my_budget" {
  name              = "Monthly Budget"
  budget_type       = "COST"
  limit_amount      = "100"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  notification {
    comparison_operator = "GREATER_THAN"
    threshold           = 90
    threshold_type      = "PERCENTAGE"
    notification_type   = "ACTUAL"
    subscriber_email_addresses = ["your-email@example.com"]
  }
}
```

### 3. Initialize Terraform
Run:
```sh
terraform init
```
This will download the necessary plugins for the cloud provider.

### 4. Plan the Infrastructure
```sh
terraform plan
```
This shows a summary of the changes that will be applied.

### 5. Apply the Configuration
```sh
terraform apply
```
Confirm with `yes` when prompted.

### 6. Destroy Resources (Optional)
If you want to delete the created resources, use:
```sh
terraform destroy
```

## 📄 Additional Resources
- Official documentation: [Terraform Docs](https://developer.hashicorp.com/terraform/docs)
- Practical tutorials: [Learn Terraform](https://learn.hashicorp.com/terraform)
- Example codes: [GitHub Terraform Examples](https://github.com/hashicorp/terraform-provider-aws/tree/main/examples)