provider "aws" {
        region = "us-east-2"
        access_key = "----"
        secret_key = "---"
}

resource "aws_instance" "ubuntu" {
        ami = "ami-0d5bf08bc8017c83b"
        instance_type = "t2.micro"
        key_name = "santosh"
        tags = {
        Name = "santosh"
        }
}