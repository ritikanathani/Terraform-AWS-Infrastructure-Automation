# AWS Multi-Tier Infrastructure Automation with Terraform

## Overview
This project demonstrates the automation of a scalable, secure, and highly available multi-tier web application infrastructure on AWS using Terraform. It showcases best practices in Infrastructure as Code (IaC), networking, compute, storage, database, and monitoring.

## Architecture
- **VPC & Networking:** Public and private subnets, NAT gateway, route tables, and security groups.
- **Compute:** EC2 instances or ECS cluster for application hosting.
- **Load Balancer:** Application Load Balancer to distribute traffic.
- **Database:** Managed RDS instance (MySQL/PostgreSQL) in private subnet.
- **Storage & CDN:** S3 for static assets, optionally integrated with CloudFront.
- **Monitoring & Alerts:** CloudWatch metrics and alarms for infrastructure health.
- **IAM & Security:** Fine-grained roles and policies following least privilege.

## Features
- Automated provisioning with **Terraform modules** for reusability.
- Multi-environment support using **Terraform workspaces** (dev/staging/prod).
- **Auto-scaling** for compute resources based on load.
- Secure handling of sensitive data with **AWS Secrets Manager**.
- Optionally integrated CI/CD pipeline for automated deployments.

## Prerequisites
- Terraform v1.5+ installed
- AWS CLI configured with appropriate credentials
- Basic knowledge of AWS services

## Getting Started
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
