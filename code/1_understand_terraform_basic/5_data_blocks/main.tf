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

################################DATA BLOCK#####################################
data "aws_region" "current" {}
data "aws_availability_zones" "available" {
  state = "available"
}
###############################################################################

resource "aws_instance" "web_server" {
  count             = 3
  ami               = "xxxx"
  instance_type     = "t2.micro"
  subnet_id         = "xxxxx"
  availability_zone = tolist(data.aws_availability_zones.available.names)[count.index]

  tags = {
    Name  = local.server_name
    Owner = local.team
    App   = local.application
  }
}