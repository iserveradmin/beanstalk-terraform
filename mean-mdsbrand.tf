module "mean-mdsbrand" {
  source               = "./beanstalk-module"
  github_repository    = "mean-mdsbrand"
  github_branch        = "master"
  github_organization  = var.github_organization
  solution_stackname   = var.solution_stackname
  region               = var.region
  OAuthToken           = var.OAuthToken
}