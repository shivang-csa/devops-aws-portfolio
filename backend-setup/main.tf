resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-devops-project-state-shivang-12345" # CHANGE THIS to be unique!
  
  lifecycle {
    prevent_destroy = true # Security: prevents accidental deletion of your state
  }
}

resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
