locals {
common_tags = {
ManagedBy = "Terraform"
Product = "${var.github_repository}-${var.github_branch}"
region = var.region
}
}