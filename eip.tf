provider "aws" {
        region = "us-east-2"
        access_key = "----"
        secret_key = "-----"
}
resource "aws_instance" "assignment-2" {
        ami = "ami-0d5bf08bc8017c83b"
        instance_type = "t2.micro"
        key_name = "santosh"
        tags = {
        Name = "eip_isnatnce"
        }
}
resource "aws_eip" "eip" {
  vpc = true
}
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.assignment-2.id
  allocation_id = aws_eip.eip.id
}
