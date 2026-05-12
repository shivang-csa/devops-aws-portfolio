# AWS Static Website Hosting with Terraform

This project automates the deployment of a secure, high-performance static website on AWS using Infrastructure as Code (IaC).

## 🚀 Architecture
* **S3**: Hosts the static website files.
* **CloudFront**: Global Content Delivery Network (CDN) for low-latency delivery.
* **Origin Access Control (OAC)**: Restricts S3 access to only CloudFront, ensuring the bucket remains private.
* **Terraform**: Manages the entire lifecycle of the infrastructure.

## 🛠️ Prerequisites
* AWS CLI configured with IAM permissions.
* Terraform CLI installed.
* MobaXterm (or any Unix-based terminal).

## 📂 Project Structure
* `/backend-setup`: Provisions the S3 bucket for Terraform Remote State.
* `/website-infra`: Contains the main infrastructure code (S3, CloudFront, IAM Policies).

## ⚠️ Project Status & Challenges
During the deployment phase, the CloudFront distribution was blocked due to AWS Account Verification requirements for new accounts. 

**Key Takeaways:**
* Successfully provisioned S3 and IAM via Terraform.
* Configured a working GitHub Actions pipeline for S3 synchronization.
* Managed AWS Service Quotas and engaged with AWS Support for resource verification.
* Implemented the Principle of Least Privilege for GitHub Secrets.
