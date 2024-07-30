terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-caught-lookin-boat" # provide github repository name here.
    }
  }
}