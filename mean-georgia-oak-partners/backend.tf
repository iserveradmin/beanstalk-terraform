terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-georgia-oak-partners" # provide github repository name here.
    }
  }
}