provider "aws" {
  region  = "us-east-1"
  version = "~> 2.63"
}


terraform {
  backend "s3" {
    bucket = "ecs-devops-case-appgo"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}