# AWS Multi-Tier Infrastructure Automation with Terraform

## Overview

This project demonstrates the automation of a **scalable, secure, and highly available multi-tier web application** infrastructure on AWS using Terraform. It showcases best practices in Infrastructure as Code (IaC), modular design, and cloud architecture.

## Architecture

The infrastructure includes:

* **VPC & Networking:** Public and private subnets, NAT gateway, route tables, and security groups.
* **Compute:** EC2 instances for backend applications.
* **Load Balancer:** Application Load Balancer to distribute traffic across EC2 instances.
* **Database:** RDS MySQL instance in private subnets.
* **Storage:** S3 bucket for static assets and optional website hosting.
* **Monitoring & Security:** CloudWatch monitoring and IAM roles following least privilege.

## Features

* Modular **Terraform architecture** for reusable components.
* Multi-environment support using **Terraform workspaces** (dev/staging/prod).
* **Auto-scaling** for compute resources based on load.
* Secure handling of sensitive data with **AWS Secrets Manager**.
* Optional **CI/CD integration** for automated deployments.

## Prerequisites

* Terraform v1.5+
* AWS CLI configured with appropriate credentials
* Basic knowledge of AWS services

## Getting Started

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd aws-multi-tier-terraform
   ```
2. Initialize Terraform:

   ```bash
   terraform init
   ```
3. Review the plan:

   ```bash
   terraform plan
   ```
4. Apply the configuration:

   ```bash
   terraform apply
   ```

## Clean Up

To destroy all resources created by Terraform:

```bash
terraform destroy
```

## Skills Demonstrated

* Infrastructure as Code (IaC) with Terraform
* AWS networking, compute, database, and storage services
* Security best practices and IAM management
* Modular design and scalable architecture
* Optional CI/CD automation

## Optional Enhancements

* Serverless components (Lambda, API Gateway)
* Multi-region disaster recovery setup
* Advanced CI/CD pipelines with CodePipeline/CodeBuild

