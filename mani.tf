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
  bucket = "terr-jenk"
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}