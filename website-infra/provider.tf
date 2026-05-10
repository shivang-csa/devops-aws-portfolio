terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "my-devops-project-state-shivang-12345" # The bucket you just made
    key            = "website/terraform.tfstate"     # Note the change to 'website/'
    region         = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
