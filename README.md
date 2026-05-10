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
