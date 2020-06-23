provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"

  root_block_device {
    encrypted = true
  }

  tags = {
    Name        = "Test Instance"
    Creator     = "ckilpatrick@ipipeline.com"
    Environment = "Sandbox"
    Product     = "ccoe"
    Terraform   = true
  }
}
