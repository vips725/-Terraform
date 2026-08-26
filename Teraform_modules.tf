variable "ami_value" {
  description = "value for the the ami"
  type        = string
}

variable "instance_type_value" {
  description = "value for the the instance type"
  type        = string
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
}