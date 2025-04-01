# Steampipe - Query Cloud Services with SQL

**Steampipe** is an open-source tool that allows you to query cloud services, APIs, and infrastructure as code (IaC) using SQL. It provides a **PostgreSQL interface** to interact with various providers like AWS, Azure, GCP, GitHub, Kubernetes, and more.

## Key Features

- **SQL-Based Queries:** Use simple SQL commands to retrieve data from cloud services.
- **Multi-Cloud Support:** Query multiple cloud providers including AWS, Azure, and GCP.
- **Security & Compliance Audits:** Run compliance benchmarks like CIS, NIST, and PCI-DSS.
- **Infrastructure as Code Support:** Works with Terraform, Kubernetes, and other IaC tools.
- **Extensible Plugin System:** Add more providers via plugins.

## Prerequisites

- **Operating System:** Linux, macOS, or Windows.
- **Docker (Optional):** If using Steampipe via a container.
- **PostgreSQL:** No separate installation needed, as Steampipe includes an embedded PostgreSQL database.

## Installation

You can install Steampipe using one of the following methods:

### Installation via Shell Script (Recommended)

1. **Download and install Steampipe:**

   ```bash
   sudo /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/turbot/steampipe/main/install.sh)"
   ```

   This command will download and run the installation script, placing the `steampipe` binary in `/usr/local/bin/`.

2. **Verify the installation:**

   ```bash
   steampipe -v
   ```

   This command should display the installed Steampipe version.

### Installation via Homebrew (macOS)

For macOS users, Steampipe can be installed using Homebrew:

1. **Install Steampipe using Homebrew:**

   ```bash
   brew install turbot/tap/steampipe
   ```

   This command installs Steampipe using Homebrew.

2. **Verify the installation:**

   ```bash
   steampipe --version
   ```

   This command should display the installed Steampipe version.

## Basic Usage

Once installed, you can start querying cloud services using SQL.

### Start Steampipe

To start the Steampipe service, run:

```bash
steampipe
```

This command initializes the Steampipe interactive shell.

### Install Plugins

Steampipe uses plugins to interact with different services. To install a plugin, use:

```bash
steampipe plugin install aws
```

Replace `aws` with the desired provider (e.g., `gcp`, `azure`, `github`).

### List Installed Plugins

To check which plugins are installed, run:

```bash
steampipe plugin list
# Output sample
#+--------------------------------------------------+---------+-------------+
#| Installed                                        | Version | Connections |
#+--------------------------------------------------+---------+-------------+
#| hub.steampipe.io/plugins/turbot/aws@latest       | 1.9.0   | aws         |
#| hub.steampipe.io/plugins/turbot/steampipe@latest | 1.0.0   | steampipe   |
#+--------------------------------------------------+---------+-------------+

```

This command lists all installed plugins.

### Sample query AWS Resources

To start an interactive query session, use:

```bash
steampipe query
```

Then enter SQL commands to fetch data from your cloud provider.

```sql
select * from aws_s3_bucket;
```

for a reference of command write `.``

```sh
   .autocomplete        Enable or disable auto-completion
   .cache               Enable, disable or clear the query cache
   .cache_ttl           Set the cache ttl (time-to-live)
   .clear               Clear the console
   .connections         List active connections
   .exit                Exit from steampipe terminal
   .header              Enable or disable column headers
   .help                Show steampipe help
   .inspect             View connections, tables & column information
   .multi               Enable or disable multiline mode
   .output              Set output format: csv, json, table or line
   .quit                Exit from steampipe terminal
   .search_path         Display the current search path, or set the search-...
   .search_path_prefix  Set a prefix to the current search-path
   .separator           Set csv output separator
   .tables              List or describe tables
   .timing              Enable or disable query execution timing

```

## Additional Resources

- **Examples Queries** [Steampipe Examples](https://steampipe.io/docs/develop/writing-example-queries)
- **Official Documentation:** [Steampipe Docs](https://steampipe.io/docs)
- **GitHub Repository:** [Steampipe on GitHub](https://github.com/turbot/steampipe)
- **Plugins:** [Available Plugins](https://steampipe.io/plugins)