terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-little-river-boat-world" # provide github repository name here.
    }
  }
}