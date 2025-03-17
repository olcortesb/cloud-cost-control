# Prowler - AWS Security Tool

**Prowler** is an open-source tool for assessing security best practices in AWS, auditing, incident response, continuous monitoring, hardening, and forensics readiness. It includes over 500 security checks covering frameworks such as CIS, NIST 800, PCI-DSS, GDPR, HIPAA, and more.

## Key Features

- **Security Assessments:** Analyzes AWS configurations to identify potential vulnerabilities.
- **Compliance Checks:** Ensures compliance with multiple security frameworks.
- **Continuous Monitoring:** Enables ongoing security supervision of AWS accounts.
- **Forensic Readiness:** Helps gather data for forensic analysis in case of security incidents.

## Prerequisites

- **Operating System:** Linux or macOS.
- **Python:** Version 3.7 or later.
- **AWS Credentials:** Configured in your environment to allow Prowler to access AWS resources.

## Installation

You can install Prowler using one of the following methods:

### Installation via GitHub (Recommended)

1. **Clone the Prowler repository from GitHub:**

   ```bash
   git clone https://github.com/prowler-cloud/prowler.git
   ```

2. **Navigate to the Prowler directory:**

   ```bash
   cd prowler
   ```

3. **Install required dependencies:**

   Prowler uses `poetry` for dependency management. If you don't have `poetry` installed, install it using:

   ```bash
   curl -sSL https://install.python-poetry.org | python3 -
   ```

   Then, install Prowler dependencies:

   ```bash
   poetry install
   ```

### Installation via PIP

Alternatively, you can install Prowler directly via `pip`:

```bash
pip install prowler-cloud
```

Once installed, you can run Prowler using:

```bash
prowler
```

## Basic Usage

Once installed, you can start using Prowler to assess the security of your AWS accounts.

### Run a Full Security Assessment

To perform a full security assessment of your AWS account, run:

```bash
prowler -p <aws_profile>
```

Replace `<aws_profile>` with the name of the AWS profile you want to evaluate. This command will execute all available security checks and generate a detailed report.

### Run Specific Security Checks

To run specific security checks, use the `-c` option followed by the check identifier. For example, to run the IAM security check:

```bash
prowler -p <aws_profile> -c check11
```

### Generate Reports in HTML Format

Prowler allows you to generate reports in various formats. To generate an HTML report, use the `-M` option:

```bash
prowler -p <aws_profile> -M html
```

The HTML report will be saved in the `output` directory within the Prowler folder.

## Updating Prowler

To keep Prowler up to date with the latest improvements and security checks, use:

```bash
pip install --upgrade prowler-cloud
```

If you installed it via GitHub, navigate to the Prowler directory and run:

```bash
git pull
poetry install
```

## Additional Resources

- **Official Documentation:** More details and advanced options can be found in the [Prowler official documentation](https://docs.prowler.com/projects/prowler-open-source/en/latest/).
- **GitHub Repository:** The source code for Prowler is available in its [GitHub repository](https://github.com/prowler-cloud/prowler).

