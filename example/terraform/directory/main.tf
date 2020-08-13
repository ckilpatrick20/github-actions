provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"

  root_block_device {
    encrypted = true
  }

  tags = {
    Name        = "Test Instance"
    Creator     = "ckilpatrick@ipipeline.com"
    Environment = "sandbox"
    Product     = "CCOE"
    Terraform   = false
  }
}

variable "ami" {
  default = "ami-0323c3dd2da7fb37d"
  description = "ami id to use for ec2 instance"
}
