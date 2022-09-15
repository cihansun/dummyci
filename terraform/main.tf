resource "aws_s3_bucket" "b" {
  name = "${var.project}-${var.environment}-1231213"

  tags = {
    Name        = "My bucket"
    Environment = "${var.environment}"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
