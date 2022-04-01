variable "access_key" {}
variable "secret_key" {}
variable "region" { default = "us-east-2" }
variable "github_organization" {}
variable "solution_stackname" { default = "64bit Amazon Linux 2 v5.5.0 running Node.js 16" }
variable "OAuthToken" {}
variable "terraform_backend_s3" { default = "terraform-artifacts-bucket-tstate-file" }
# variable "beanstalk" {
#   type = list(object({
#     github_repository = number
#     external = number
#     protocol = string
#   }))