# module "example-module" {
#   source               = "./beanstalk-module"
#   github_repository    = "repo_name"
#   github_branch        = "master"
#   github_organization  = var.github_organization
#   solution_stackname   = var.solution_stackname
#   region               = var.region
#   terraform_backend_s3 = var.terraform_backend_s3
#   OAuthToken           = var.OAuthToken
# }