terraform {
  backend "s3" {
    bucket = var.terraform_backend_s3
    key    = "${local.name-prefix}/terraform.tfstate"
    region = var.region
  }
}
