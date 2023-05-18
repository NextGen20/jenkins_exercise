provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "example" {
  ami = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-instance"
  }
}
resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-jenkins"  
  
}