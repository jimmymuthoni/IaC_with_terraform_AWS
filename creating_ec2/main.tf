provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "this" {
  ami                     = "ami-04680790a315cd58d" 
  instance_type           = "t3.micro"
}