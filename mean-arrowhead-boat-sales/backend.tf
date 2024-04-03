terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-arrowhead-boat-sales" # provide github repository name here.
    }
  }
}