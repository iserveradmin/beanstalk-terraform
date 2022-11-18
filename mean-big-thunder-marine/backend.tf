terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-big-thunder-marine" # provide github repository name here.
    }
  }
}