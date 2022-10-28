terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-strong-waterclub" # provide github repository name here.
    }
  }
}