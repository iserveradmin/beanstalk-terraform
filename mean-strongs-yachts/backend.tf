terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-strongs-yachts" # provide github repository name here.
    }
  }
}