provider "aws" {
        region = "us-east-2"
        access_key = "------"
        secret_key = "-----"
}

resource "aws_instance" "assignment-4" {
        ami = "ami-0d5bf08bc8017c83b"
        instance_type = "t2.micro"
        subnet_id = aws_subnet.assignment-4-subnet.id
        key_name = "santosh"
        tags = {
        Name = "vpc_instace"
        }
}

resource "aws_vpc" "assignment-4-vpc" {
        cidr_block = "10.10.0.0/16"
        tags = {
        Name = "assignment-4-vpc"
        }
}

resource "aws_subnet" "assignment-4-subnet" {
        vpc_id = aws_vpc.assignment-4-vpc.id
        cidr_block = "10.10.0.0/18"
        availability_zone = "us-east-2a"
        tags = {
        Name = "assignment-4-subnet"
        }
}
