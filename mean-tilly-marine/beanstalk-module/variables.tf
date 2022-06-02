variable "github_organization" {}
variable "github_repository" {}
variable "github_branch" {}
variable "solution_stackname" {}
#variable "terraform_backend_s3" {}
variable "region" {}
variable "OAuthToken" {}
locals { name-prefix = "${var.github_repository}-${var.github_branch}" }
