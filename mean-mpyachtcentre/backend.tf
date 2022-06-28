terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-mpyachtcentre" # provide github repository name here.
    }
  }
}