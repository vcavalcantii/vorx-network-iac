terraform {
  backend "s3" {
    bucket = "vorx-infra-remote-state"
    key    = "infra-terraform.tfstate"
    region = "us-east-1"
  }
}