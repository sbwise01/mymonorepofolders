terraform {
  required_version = "~> 0.12.31"

  backend "s3" {
    bucket       = "bw-terraform-state-us-east-1"
    key          = "devproduct1.tfstate"
    region       = "us-east-1"
    role_arn     = "arn:aws:iam::238080251717:role/devops"
    session_name = "terraform-dev-product1"
    external_id  = "terraform-dev-product1"
  }
}
