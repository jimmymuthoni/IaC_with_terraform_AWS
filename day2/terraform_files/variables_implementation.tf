#configuring the provider
provider "aws" {
    region = "us-east-1"
}

#defining an input varibles for the Ec@ instance type
variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t3.micro"
}

#input varible for EC2 AMI ID
variable "ami_id" {
    description = "EC2 AMI ID"
    type = string
}

#creating a resource using the input variable
resource "aws_instance" "example_instance" {
    ami           = var.ami_id
    instance_type = var.instance_type
  
}

#ouput variable to expose the public IP addess of the EC2 instance
output "public_ip" {
    description = "Public IP address of the EC2 instance"
    value       = aws_instance.example_instance.public_ip
  
}

