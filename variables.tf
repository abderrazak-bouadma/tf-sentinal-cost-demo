variable "region" {
  description = "AWS region"
  default = "us-east-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default = "Provisioned by Terraform"
}

variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_ACCESS_KEY_SECRET" {}