provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "example" {
  ami = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-instance"
  }
}
resource "aws_s3_bucket" "my_bucket" {
  bucket = "terr-jenk"
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  
}