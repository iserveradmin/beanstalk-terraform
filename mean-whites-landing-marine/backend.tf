terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-whites-landing-marine" # provide github repository name here.
    }
  }
}