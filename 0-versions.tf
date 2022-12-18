terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.47.0"
    }
  }

  required_version = ">= 1.0"

  backend "remote" {
    organization = "empty-mug"

    workspaces {
      name = "sentinel-costs-demo"
    }
  }

}