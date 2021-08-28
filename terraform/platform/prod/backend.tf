terraform {
  required_version = "~> 0.12.31"

  backend "s3" {
    bucket       = "brad-terraform-state-us-east-1"
    key          = "prodplatform.tfstate"
    region       = "us-east-1"
    role_arn     = "arn:aws:iam::509680183794:role/braddevops"
    session_name = "terraform-prod-platform"
    external_id  = "terraform-prod-platform"
  }
}
