module "beanstalk-module" {
  source                    = "./beanstalk-module"
  github_repository         = var.github_repository
  github_branch             = var.github_branch
  github_organization       = var.github_organization
  solution_stackname        = var.solution_stackname
  region                    = var.region
  OAuthToken                = var.OAuthToken
  root_domain               = var.root_domain
  sub_domain                = var.sub_domain
  subject_alternative_names = var.subject_alternative_names

}
