provider "aws" {
  version = "~> 3.0"
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
    default_tags {
      tags = {
          Env = var.github_repository
    }
  }
}
