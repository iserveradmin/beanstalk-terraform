terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-lakeside-marina" # provide github repository name here.
    }
  }
}