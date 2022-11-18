terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-boat-town" # provide github repository name here.
    }
  }
}