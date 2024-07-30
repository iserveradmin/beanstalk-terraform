resource "aws_codepipeline" "pipeline" {
  name     = local.name-prefix
  role_arn = aws_iam_role.build.arn

  artifact_store {
    location = aws_s3_bucket.artifacts.bucket
    type     = "S3"
  }

  stage {
    name = "Source"

    action {
      name             = "Source"
      category         = "Source"
      owner            = "ThirdParty"
      provider         = "GitHub"
      version          = "1"
      output_artifacts = ["source"]

      configuration = {
        Owner      = var.github_organization
        Repo       = var.github_repository
        Branch     = var.github_branch
        OAuthToken = var.OAuthToken
      }
    }
  }

  # stage {
  #   name = "Build"

  #   action {
  #     name             = "Build"
  #     category         = "Build"
  #     owner            = "AWS"
  #     provider         = "CodeBuild"
  #     input_artifacts  = ["source"]
  #     output_artifacts = ["artifact"]
  #     version          = "1"

  #     configuration = {
  #       ProjectName = aws_codebuild_project.build.name
  #     }
  #   }
  # }

  stage {
    name = "Deploy"

    action {
      name            = "Deploy"
      category        = "Deploy"
      owner           = "AWS"
      provider        = "ElasticBeanstalk"
      input_artifacts = ["source"]
      version         = "1"

      configuration = {
        ApplicationName = aws_elastic_beanstalk_application.beanstalk_application.name
        EnvironmentName = aws_elastic_beanstalk_environment.beanstalk_app_env.name
      }
    }
  }
}
