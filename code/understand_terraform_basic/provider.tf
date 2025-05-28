provider "aws" {
  region = "us-east-1"
  # access_key = "#######"
  # secret_key = "#######"
  shared_credentials_file = "/path/to/cred/.aws/credentials"
  profile = "customProfile"
}