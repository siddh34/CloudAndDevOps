provider "aws" {
    region = "ap-south-1"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "ami_id" {
    default = "ami-0e742cca61fb65051"
}

resource "aws_instance" "example" {
    ami           = var.ami_id
    instance_type = var.instance_type
}