provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "t3.micro"

  root_block_device {
    encrypted = true
  }

  tags = {
    Name        = "Test Instance"
    Creator     = "ckilpatrick@ipipeline.com"
    Environment = "QA"
    Product     = "CCOE"
    Terraform   = false
  }
}

variable "ami" {
  default = "ami-0323c3dd2da7fb37d"
}
