terraform {
  required_version = ">=1.0.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
    random = {
        source = "hashicorp/random"
        version = "3.1.0"
    }
    helm = {
        source = "hashicorp/helm"
        version = "3.0.0-pre2"
    }
  }
}