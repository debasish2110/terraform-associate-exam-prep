provider "aws" {
  region = "ap-south-1"
}

variable "variables_sub_az" {
  description = "Availability Zone used Variables Subnet"
  type        = string
  default     = "ap-south-1a"
}

variable "environment" {
  description = "environment"
  type        = string
  default     = "dev"
}

locals {
  team        = "api-mgmt-dev"
  application = "corp_api"
  server_name = "ec2-${var.environment}-api-${var.variables_sub_az}"
}


resource "aws_instance" "web_server" {
  ami           = "xxxx"
  instance_type = "t2.micro"
  subnet_id     = "xxxxx"
  tags = {
    Name  = local.server_name
    Owner = local.team
    App   = local.application
  }
}