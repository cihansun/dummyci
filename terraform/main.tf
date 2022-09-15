resource "aws_s3_bucket" "b" {
  bucket = "${var.project}-${var.environment}-1231213"

  tags = {
    Name        = "My bucket"
    Environment = var.environment
  }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.b.id
  versioning_configuration {
    status = "Enabled"
  }
}
