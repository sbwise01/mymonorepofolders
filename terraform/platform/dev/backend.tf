terraform {
  required_version = "~> 0.12.31"

  backend "s3" {
    bucket       = "bw-terraform-state-us-east-1"
    key          = "devplatform.tfstate"
    region       = "us-east-1"
    role_arn     = "arn:aws:iam::238080251717:role/devops"
    session_name = "terraform-dev-platform"
    external_id  = "terraform-dev-platform"
  }
}
