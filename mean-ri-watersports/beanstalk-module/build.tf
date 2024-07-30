resource "aws_s3_bucket" "artifacts" {
  bucket = local.name-prefix
  acl    = "private"
  force_destroy = true
}

resource "aws_codebuild_project" "build" {
  name = local.name-prefix
  description = "Builds the client files for the incredible-website environment."
  build_timeout = "5"
  service_role = aws_iam_role.build.arn

   artifacts {
    type = "CODEPIPELINE"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image = "aws/codebuild/standard:7.0"
    type = "LINUX_CONTAINER"

    environment_variable {
        name  = "S3_BUCKET"
        value = aws_s3_bucket.artifacts.bucket
    }
  }

  source {
    type = "CODEPIPELINE"
    buildspec = "buildspec.yml"
  }
}