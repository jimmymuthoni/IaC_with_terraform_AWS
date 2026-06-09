 provider "aws" {
    region = "us-east-1"
 }

 resource "aws_instance" "statefile" {
    instance_type = "t3.micro"
    ami = "ami-091138d0f0d41ff90"
 }


 resource "aws_s3_bucket" "mybacket" {
   bucket = "jim-s3-demo-dev-ops"
 }