terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-kellys-port" # provide github repository name here.
    }
  }
}