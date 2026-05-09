terraform {
  backend "s3" {
    bucket         = "pharma-tf-state-707082329914"
    key            = "envs/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "pharma-tf-lock"
    encrypt        = true
  }
}
