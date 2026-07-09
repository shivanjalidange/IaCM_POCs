# Harness IaCM Proof of Concept (PoC) - First Workspace Setup

This repository contains a beginner-friendly Terraform configuration designed to demonstrate Infrastructure as Code Management (IaCM) within the Harness ecosystem. It provisions a simple, secure AWS S3 bucket and manages its state remotely.

## Architecture Overview

The configuration is modularized into four key files to maintain clean, production-ready standards:

* **`providers.tf`**: Defines our connection to AWS, enforcing Terraform `>= 1.5.0` (OpenTofu compatible) and the AWS Provider `~> 5.0`.
* **`main.tf`**: Contains the core infrastructure logic—defining the `aws_s3_bucket` resource.
* **`variables.tf`**: Declares parameterized inputs (`bucket_name`, `aws_region`, `tags`) to keep the code dynamic.
* **`outputs.tf`**: Exposes the S3 bucket's final Name and ARN back to the Harness console post-deployment.
* **`backend.tf`**: Configures the remote S3 tracking mechanism for state management.

---

## Configuration Details

### Input Variables
When setting up your Harness IaCM Workspace, you will need to map these variables:

| Variable Name | Type | Default Value | Description |
| :--- | :--- | :--- | :--- |
| `bucket_name` | `string` | *Required (No Default)* | Globally unique name for the target S3 bucket. |
| `aws_region` | `string` | `"us-east-1"` | Target AWS region for deployment. |
| `tags` | `map(string)`| `{"Environment": "Dev", "ManagedBy": "Harness"}` | Metadata tagging applied to the resource. |

### Outputs
Upon a successful execution, the following outputs will be visible in the Harness State UI:
* `bucket_name`: The unique identifier/name of the created bucket.
* `bucket_arn`: The Amazon Resource Name (ARN) of the bucket.

---

## Deployment Steps in Harness

### 1. Workspace Configuration
1. Navigate to **Infrastructure** -> **IaCM** -> **Workspaces** -> **New Workspace**.
2. Name the workspace .
3. For **Repository Type**, select **Harness Code** and point it to this repository (`iacm-terraform-basics`) on the `main` branch.
4. Select your pre-configured **AWS Cloud Provider Connector**.

### 2. Variable Assignment
In the Workspace settings, provide the required value for `bucket_name` (ensure it complies with AWS naming rules). You can override `aws_region` or `tags` if desired.

### 3. Execution Workflow
* **Plan:** Trigger a manual Plan to view the execution graph and cost estimation (if applicable). Harness will initialize the state backend and show `1 to add`.
* **Apply:** Approve and execute the plan to build the S3 bucket in your target AWS account.
* **Drift Detection:** Enable drift schedules or trigger manual drift checks to ensure direct alterations via the AWS Console are automatically caught and flagged.