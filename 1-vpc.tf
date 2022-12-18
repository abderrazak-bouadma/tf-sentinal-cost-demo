provider "aws" {
  region = var.region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_ACCESS_KEY_SECRET
}

# Path: 1-vpc.tf
resource "aws_vpc" "tf_demo_vpc" {
  cidr_block = "172.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
      Name = "tf_demo_vpc"
    }
}

# Path: 2-subnets.tf
resource "aws_subnet" "tf_demo_subnet" {
  vpc_id = aws_vpc.tf_demo_vpc.id
  cidr_block = "172.0.0.0/24"
    availability_zone = "us-east-1a"
    tags = {
      Name = "tf_demo_subnet"
    }
}

# Path: 3-ec2.tf
resource "aws_instance" "tf_demo_ec2" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
  instance_name = var.instance_name
  subnet_id = aws_subnet.tf_demo_subnet.id
  tags = {
    Name = "tf_demo_ec2"
  }
}
