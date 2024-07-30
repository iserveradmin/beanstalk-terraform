terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MDS_Brand"

    workspaces {
       name = "mean-thunder-marine" # provide github repository name here.
    }
  }
}
