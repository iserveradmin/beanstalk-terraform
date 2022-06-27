variable "github_organization" {}
variable "github_repository" {}
variable "github_branch" {}
variable "solution_stackname" {}
#variable "terraform_backend_s3" {}
variable "region" {}
variable "OAuthToken" {}
variable root_domain             { type = string }
variable "sub_domain" {}
variable "subject_alternative_names" {}
locals { name-prefix = "${var.github_repository}-${var.github_branch}" }
