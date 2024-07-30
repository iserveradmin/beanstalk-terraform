terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-sailfish-boats-staging" # provide github repository name here.
    }
  }
}