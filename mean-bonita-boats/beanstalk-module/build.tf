resource "aws_s3_bucket" "artifacts" {
  bucket = local.name-prefix
  acl    = "private"
  force_destroy = true
}
