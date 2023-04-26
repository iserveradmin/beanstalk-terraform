terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-n3-boats-works" # provide github repository name here.
    }
  }
}