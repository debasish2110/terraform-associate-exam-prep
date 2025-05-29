variable "aws_region" {
  type        = string
  description = "region used to deploy workloads"
  default     = "us-east-1"
  validation {
    condition     = can(regex("^us-", var.aws_region))
    error_message = "The aws_region value must be a valid region in the USA, starting with \"us-\"."
  }
}

variable "variables_sub_cidr" {
  description = "CIDR Block for the Variables Subnet"
  type        = string
  default = "10.0.202.0/24"
}

variable "variables_sub_az" {
  description = "Availability Zone used Variables Subnet"
  type        = string
  default = "ap-south-1a"
}

variable "variables_sub_auto_ip" {
  description = "Set Automatic IP Assigment for Variables Subnet"
  type        = bool
  default = true
}

variable "region" {
    description = "AWS region"
    type = string
    # default = "ap-south-1", if we dont pass the default then it will ask while executing terraform plan
}