provider "aws" {
  version = "~> 3.0"
 region     = var.region
    default_tags {
      tags = {
          Env = var.github_repository
    }
  }
}
