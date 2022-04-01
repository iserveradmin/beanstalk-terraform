module "mean-sailfish-boats-module" {
  source               = "./beanstalk-module"
  github_repository    = "mean-sailfish-boats"
  github_branch        = "staging"
  github_organization  = var.github_organization
  solution_stackname   = var.solution_stackname
  region               = var.region
  OAuthToken           = var.OAuthToken
}